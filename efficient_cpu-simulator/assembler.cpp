#include <iostream>
#include <iomanip>
#include <sstream>
#include <fstream>
#include <string>
#include <cassert>
#include "assembler.h"
#include "tools.h"
using namespace std;

map<string, AsmT> gAsmb;
bool isDumpOn = true;

void removeComment(string& cmd) {
  for (int i = 0; i < cmd.size(); i++) {
    if (cmd[i] == '#') {
      cmd = cmd.substr(0, i);
      break;
    }
  }
}

void removeComma(string& cmd) {
  for (int i = 0; i < cmd.size(); i++) {
    if (cmd[i] == ',') {
      cmd[i] = ' ';
    }
  }
}

void removeSpaces(string& cmd) {
  while (!cmd.empty()) {
    if (cmd[0] == ' ' || cmd[0] == '\t') {
      cmd.erase(0, 1);
    }
    else break;
  }
  int m = cmd.size() - 1;
  while (m >= 0 && (cmd[m] == ' ' || cmd[m] == '\t')) {
    cmd.erase(m--, 1);
  }
}

int initializeInst(string& cmd, int& addr, map<string, int>& lab, vector<string>& inst) {
  removeComment(cmd);
  removeSpaces(cmd);
  if (cmd.empty()) {
    return 0;
  }
  if (cmd[cmd.size() - 1] == ':') {
    assert(lab.count(cmd) == 0);
    lab[cmd.substr(0, cmd.size() - 1)] = addr;
    return 0;
  }
  // if some assembler directives(.*) are used in *.asm file, this section must be improved
  if (cmd[0] == '.') { 
    return 0;
  }
  
  removeComma(cmd);
  inst.push_back(cmd);
  addr++;
  return 0;
}

void reg2bin(string& s) {
  if (s == "$zero") s = "00000";
  else if (s == "$v0") s = "00001";
  else if (s == "$a0") s = "00010";
  else if (s == "$a1") s = "00011";
  else if (s == "$a2") s = "00100";
  else if (s == "$a3") s = "00101";
  else if (s == "$a4") s = "00110";
  else if (s == "$a5") s = "00111";
  else if (s == "$a6") s = "01000";
  else if (s == "$a7") s = "01001";
  else if (s == "$a8") s = "01010";
  else if (s == "$a9") s = "01011";   
  else if (s == "$a10") s = "01100";
  else if (s == "$a11") s = "01101";
  else if (s == "$a12") s = "01110";
  else if (s == "$a13") s = "01111";
  else if (s == "$a14") s = "10000";
  else if (s == "$a15") s = "10001";
  else if (s == "$a16") s = "10010";
  else if (s == "$a17") s = "10011";        
  else if (s == "$a18") s = "10100";
  else if (s == "$a19") s = "10101";  
  else if (s == "$a20") s = "10110";
  else if (s == "$a21") s = "10111";
  else if (s == "$a22") s = "11000";
  else if (s == "$a23") s = "11001";
  else if (s == "$a24") s = "11010";
  else if (s == "$a25") s = "11011";
  else if (s == "$a26") s = "11100";
  else if (s == "$sp") s = "11101";
  else if (s == "$fp") s = "11110";
  else if (s == "$ra") s = "11111";
}

void divideRegOff(string& s, string& t) {
  int offRegSize = s.size();
  int pos = 0;
  while (pos < offRegSize && s[pos] != '(') {
    pos++;
  }
  t = s.substr(0, pos);
  stringstream off(t), off2;
  int tmp;
  off >> tmp;
  tmp = (tmp + (1 << 16)) & ((1 << 16) - 1);
  off2 << tmp;
  t = off2.str();
  dec2bin(t, 16);
  s = s.substr(pos + 1, offRegSize - pos - 2);
  reg2bin(s);
}

string assemble(string& cmd, const int addr, map<string, int>& label) {
  stringstream ss(cmd);
  string op, r[3];
  ss >> op; // split by space
  if (op == "nop") {
   return "00000000000000000000000000000000";
  } else if (op == "hlt") {
    return "00111100000000000000000000000000";
  }
  
  const AsmT& as = gAsmb[op]; // gAsmb[hoge] has been defined in setInit()

  // convert to bin
  for (int i = 0; i < as.mOperandNum; i++) {
    ss >> r[i]; // register, imm, or mShamt
    if (as.mRegNum == -2) { // sw, lw
      if (i == 0) {
        reg2bin(r[i]); // register(rt)
      }
      if (i == 1) {
        divideRegOff(r[i], r[i + 1]); // r[i] : register(rs), r[i + 1] : offset
      }
    } else if (i >= as.mRegNum && as.mFormat == "R") { // sll, srl
      dec2bin(r[i], 5); // mShamt
    } else if (as.mFormat == "B") { // beq, bne
      if (i == 2) {
        assert(label.count(r[i]));
        r[i] = i2bin(label[r[i]] - addr - 1, 16); // the distance of branch
      } else {
        reg2bin(r[i]);
      }
    } else if (as.mFormat == "J") { // j, jal
      r[i] = i2bin(label[r[i]], 26);
    } else if (i < as.mRegNum) { // add, sub, addi, and, andi, or, ori, slt, slti, jr, move, subi, li
      reg2bin(r[i]);
    } else { // addi, andi, ori, slti, subi, li
      dec2bin(r[i], 16);
    }
  }
  if (op == "move") {
    r[2] = "0";
    dec2bin(r[2], 16);
  }
  // connect bits
  if (as.mFormat == "R") {
    if (as.mRegNum == 3 || op == "jr") {
      return as.mOpcd + r[1] + r[2] + r[0] + as.mShamt + as.mFunct; // opcode $rd $rs $rt
    } else if (as.mOperandNum == 2) {
      return as.mOpcd + r[1] + "00000" + r[2] + r[0] + as.mShamt + as.mFunct; // opcode $rd $rs $rt
    } else if (as.mOperandNum == 3) {
      return as.mOpcd + "00000" + r[1] + r[0] + r[2] + as.mFunct; // opcode $rd $rt C
    }
  } else if (as.mFormat == "I" && op != "li") {
    return as.mOpcd + r[1] + r[0] + r[2];
  } else if (as.mFormat == "I" && op == "li") {
    return as.mOpcd + "00000" + r[0] + r[1];
  } else if (as.mFormat == "B") {
    return as.mOpcd + r[0] + r[1] + r[2];
  } else if (as.mFormat == "J") {
    return as.mOpcd + r[0];
  } else {
    return "Failed to assemble. This instruction is not be defined in this simulator.";
  }
  return "";
}

void setInit() { // AsmT(mRegNum, mOperandNum, mFormat, mOpcd, mShamt(imm), mFunct(imm))
  gAsmb["add"] = AsmT(3, 3, "R", "000000", "00000", "100000");
  gAsmb["sub"] = AsmT(3, 3, "R", "000000", "00000", "100010");
  gAsmb["addi"] = AsmT(2, 3, "I", "001000", "", "");
  gAsmb["lw"] = AsmT(-2, 3, "I", "100011", "", "");
  gAsmb["sw"] = AsmT(-2, 3, "I", "101011", "", "");
  gAsmb["and"] = AsmT(3, 3, "R", "000000", "00000", "100100");
  gAsmb["andi"] = AsmT(2, 3, "I", "001100", "", "");
  gAsmb["or"] = AsmT(3, 3, "R", "000000", "00000", "100101");
  gAsmb["ori"] = AsmT(2, 3, "I", "001101", "", "");
  gAsmb["slt"] = AsmT(3, 3, "R", "000000", "00000", "101010");
  gAsmb["slti"] = AsmT(2, 3, "I", "001010", "", "");
  gAsmb["sll"] = AsmT(2, 3, "R", "000000", "", "000000");
  gAsmb["srl"] = AsmT(2, 3, "R", "000000", "", "000010");
  gAsmb["beq"] = AsmT(2, 3, "B", "000100", "", ""); // for convenience, "B" is used as "B"ranch here
  gAsmb["bne"] = AsmT(2, 3, "B", "000101", "", "");
  gAsmb["j"] = AsmT(0, 1, "J", "000010", "", "");
  gAsmb["jr"] = AsmT(1, 1, "R", "000000", "000000000000000", "001000");
  gAsmb["jal"] = AsmT(0, 1, "J", "000011", "", "");

  gAsmb["move"] = AsmT(2, 2, "I", "001110", "", "");
  gAsmb["subi"] = AsmT(2, 3, "I", "000110", "", "");
  gAsmb["li"] = AsmT(1, 2, "I", "000001", "", "");
  gAsmb["hlt"] = AsmT(0, 0, "I", "001111", "00000", "000000");
  
}

void genMachineBin(const char* filename, uint32_t& startPc) {
  setInit();
  char* outFile = (char*)"bin.log";
  ifstream in(filename);
  ofstream out(outFile);

  string command;
  int addr = 0;
  map<string, int> label;
  vector<string> inst;
  while (getline(in, command)) {
    initializeInst(command, addr, label, inst);
  }
  startPc = static_cast<uint32_t>(label["_min_caml_start"]);
  cout << string(70, '-') << endl << "<Instraction>" << endl;
  for (int i = 0; i < inst.size(); i++) {
    if (isDumpOn) {
      cerr << setw(3) << right << i << " | " << assemble(inst[i], i, label) + "   # " + inst[i] << endl;
    }
    out << assemble(inst[i], i, label) + "\n";
  }
}
