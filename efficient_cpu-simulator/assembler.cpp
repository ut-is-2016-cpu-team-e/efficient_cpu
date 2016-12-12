#include <iostream>
#include <iomanip>
#include <sstream>
#include <fstream>
#include <string>
#include <cassert>
#include <cmath>
#include "assembler.h"
#include "tools.h"
using namespace std;

// generate "bin.log" with label from "*.s"
Asm::Asm(const char* filename) : isJoutOn(true), isDumpOn(true) {
  setInit();
  char* outFile1 = (char*)"bin.log";
  char* outFile2 = (char*)"asm.log";
  ifstream in(filename);
  ofstream out1(outFile1), out2(outFile2);

  string command;
  int addr = 0;
  unordered_map<string, int> label;
  vector<string> inst;
  while (getline(in, command)) {
    initializeInst(command, addr, label, inst);
  }
  if (isJoutOn) { 
    label["jout"] = addr++;
    inst.push_back("jout");
  }

  // setLibLab(addr, label, inst);

  if (label.find("_min_caml_start") != label.end()) {
    inst.insert(inst.begin(), "j   _min_caml_start");
    for (auto itr = label.begin(); itr != label.end(); itr++) {
      itr->second++;
    }
  }

  cout << string(70, '-') << endl << "<Instraction>" << endl;

  // dump
  if (isDumpOn) {
    for (unsigned i = 0; i < inst.size(); i++) {
      for (auto itr = label.begin(); itr != label.end(); itr++) {
        if (itr->second == static_cast<int>(i)) {
          cout << itr->first + ":" << endl;
          break;
        }
      }
      cerr << setw(3) << setfill('0') << right << i << " | " << assemble(inst[i], i, label) + "   # " + inst[i] << endl;
    }
  }
  // write to file
  for (unsigned i = 0; i < inst.size(); i++) {
    out1 << assemble(inst[i], i, label) + "\n";
    for (auto itr = label.begin(); itr != label.end(); itr++) {
      if (itr->second == static_cast<int>(i)) {
        out2 << itr->first + ":" + "\n";
        break;
      }
    }
    out2 << inst[i] + "\n";
  }
    cout << endl << "\"bin.log\" and \"asm.log\" have just been generated from " << filename << endl;
}

void Asm::removeComment(string& cmd) {
  for (unsigned i = 0; i < cmd.size(); i++) {
    if (cmd[i] == '#') {
      cmd = cmd.substr(0, i);
      break;
    }
  }
}

void Asm::removeComma(string& cmd) {
  for (unsigned i = 0; i < cmd.size(); i++) {
    if (cmd[i] == ',') {
      cmd[i] = ' ';
    }
  }
}

void Asm::removeSpaces(string& cmd) {
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

int Asm::initializeInst(string& cmd, int& addr, unordered_map<string, int>& lab, vector<string>& inst) {
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
  // if some assembler directives(.*) are used in *.s file, this section must be improved
  if (cmd[0] == '.') { 
    return 0;
  }
  
  removeComma(cmd);
  inst.push_back(cmd);
  addr++;
  return 0;
}

void Asm::divideRegOff(string& s, string& t) {
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
  s = gReg2bin[s];
}
/*
void Asm::setLibLab(int& addr, unordered_map<string, int>& label, vector<string>& inst) {
  label["min_caml_sqrt"] = addr;
  inst.push_back("sqrt  $fv $f0");
  inst.push_back("jr    $ra");
  addr += 2;
  label["min_caml_sin"] = addr;
  inst.push_back("sin   $fv $f0");
  inst.push_back("jr    $ra");
  addr += 2;
  label["min_caml_cos"] = addr;
  inst.push_back("cos   $fv $f0");
  inst.push_back("jr    $ra");
  addr += 2;
  label["min_caml_floor"] = addr;
  inst.push_back("floor $fv $f0");
  inst.push_back("jr    $ra");
  addr += 2;
  label["min_caml_atan"] = addr;
  inst.push_back("atan  $fv $f0");
  inst.push_back("jr    $ra");
  addr += 2;
  label["min_caml_float_of_int"] = addr;
  inst.push_back("itof  $fv $a0");
  inst.push_back("jr    $ra");
  addr += 2;
  label["min_caml_int_of_float"] = addr;
  inst.push_back("ftoi  $v0 $f0");
  inst.push_back("jr    $ra");
  addr += 2;
  label["min_caml_print_int"] = addr;
  inst.push_back("print_int");
  inst.push_back("jr    $ra");
  addr += 2;
  label["min_caml_print_char"] = addr;
  inst.push_back("print_char");
  inst.push_back("jr    $ra");
  addr += 2;
  label["min_caml_read_int"] = addr;
  inst.push_back("read_int");
  inst.push_back("jr    $ra");
  addr += 2;
  label["min_caml_read_float"] = addr;
  inst.push_back("read_float");
  inst.push_back("jr    $ra");
  addr += 2;
}
*/
string Asm::assemble(string& cmd, const int addr, unordered_map<string, int>& label) {
  stringstream ss(cmd);
  string op, r[3];
  ss >> op; // split by space

  if (op == "nop") {
   return "00000000000000000000000000000000";
  } else if (op == "hlt") {
    return "00111100000000000000000000000000";
  } else if (op == "jout") {
    return "11111100000000000000000000000000";
  }
  
  const AsmT& as = gAsmb[op]; // gAsmb[hoge] has been defined in setInit()

  // convert to bin
  for (int i = 0; i < as.mOperandNum; i++) {
    ss >> r[i]; // register, imm, or mShamt

    if (as.mRegNum == -2) { // lw, sw, flw, fsw
      if (i == 0) {
        r[i] = gReg2bin[r[i]]; // register(rt)
      }
      if (i == 1) {
        divideRegOff(r[i], r[i + 1]); // r[i] : register(rs), r[i + 1] : offset
      }
    } else if (i >= as.mRegNum && as.mFormat == "R") { // sll, srl, sla, sra
      dec2bin(r[i], 5); // mShamt
    } else if (as.mFormat == "B") { // beq, bne, blt
      if (i == 2) {
        assert(label.count(r[i]));
        r[i] = i2bin(label[r[i]] - addr - 1, 16); // the distance of branch
      } else {
        r[i] = gReg2bin[r[i]];
      }
    } else if (as.mFormat == "J" && op != "lil") { // j, jal
      if (label.find(r[i]) != label.end()) {
        r[i] = i2bin(label[r[i]], 26);
      } else { // if there is not a label that can be jumped, jump to jout
        r[i] = i2bin(label["jout"], 26);
      }
    } else if (as.mFormat == "J" && op == "lil") { // lil
      if (i == 0) {
        r[i] = gReg2bin[r[i]];
      } else if (i == 1) {
        if (label.find(r[i]) != label.end()) {
          r[i] = i2bin(label[r[i]], 21);
        } else {
          r[i] = i2bin(label["jout"], 21);
        }
      }
    } else if (i < as.mRegNum) { // add, sub, addi, and, andi, or, xor, ori, (lti), jr, move, subi, li, fadd, fsub, fmul, fdiv, finv, fabs, fmove, mfc1, mtc1
      r[i] = gReg2bin[r[i]];
    } else { // addi, andi, ori, lti, subi, li
      dec2bin(r[i], 16);
    }
  }

  if (op == "move" || op == "fmove" || op == "mfc1" || op == "mtc1") {
    r[2] = "0";
    dec2bin(r[2], 16);
  }
  
  // connect bits
  if (as.mFormat == "R") {
    if (as.mRegNum == 3 || op == "jr") {
      return as.mOpcd + r[1] + r[2] + r[0] + as.mShamt + as.mFunct; // opcode $rd $rs $rt
    } else if (as.mOperandNum == 2) {
      return as.mOpcd + r[1] + "00000" + r[2] + r[0] + as.mShamt + as.mFunct; // opcode $rd $rs 
    } else if (as.mOperandNum == 3) {
      return as.mOpcd + "00000" + r[1] + r[0] + r[2] + as.mFunct; // opcode $rd $rt C
    } 
  } else if (as.mFormat == "I" && (op == "fmove" || op == "mfc1" || op == "mtc1")) {
    return as.mOpcd + r[1] + r[0] + "00000" + as.mShamt + as.mFunct;
  } else if (as.mFormat == "I" && (op == "print_int" || op == "print_char" || op == "read_int" || op == "read_float")) {
    return as.mOpcd + r[0] + "0000000000" + as.mShamt + as.mFunct;
  } else if (as.mFormat == "I" && op != "li") {
    return as.mOpcd + r[1] + r[0] + r[2];
  } else if (as.mFormat == "I" && op == "li") {
    return as.mOpcd + "00000" + r[0] + r[1];
  } else if (as.mFormat == "B") {
    return as.mOpcd + r[0] + r[1] + r[2];
  } else if (as.mFormat == "J" && op != "lil") {
    return as.mOpcd + r[0];
  } else if (as.mFormat == "J" && op == "lil") {
    return as.mOpcd + r[0] + r[1];
  } else {
    return "Failed to assemble. This instruction is not defined in this simulator.";
  }
  return "";
}

void Asm::setInit() { 
  // AsmT(mRegNum, mOperandNum, mFormat, mOpcd, mShamt(imm), mFunct(imm))
  gAsmb["add"] = AsmT(3, 3, "R", "000000", "00000", "100000");
  gAsmb["sub"] = AsmT(3, 3, "R", "000000", "00000", "100010");
  gAsmb["addi"] = AsmT(2, 3, "I", "001000", "", "");
  gAsmb["lw"] = AsmT(-2, 3, "I", "100011", "", "");
  gAsmb["sw"] = AsmT(-2, 3, "I", "101011", "", "");
  gAsmb["and"] = AsmT(3, 3, "R", "000000", "00000", "100100");
  gAsmb["andi"] = AsmT(2, 3, "I", "001100", "", "");
  gAsmb["or"] = AsmT(3, 3, "R", "000000", "00000", "100101");
  gAsmb["xor"] = AsmT(3, 3, "R", "000000", "00000", "100111");
  gAsmb["ori"] = AsmT(2, 3, "I", "001101", "", "");
  gAsmb["neg"] = AsmT(2, 2, "R", "000000", "00000", "100110");
  gAsmb["sll"] = AsmT(2, 3, "R", "000000", "", "000000");
  gAsmb["srl"] = AsmT(2, 3, "R", "000000", "", "000010");
  gAsmb["sla"] = AsmT(2, 3, "R", "000000", "", "000011");
  gAsmb["sra"] = AsmT(2, 3, "R", "000000", "", "000100");
  gAsmb["beq"] = AsmT(2, 3, "B", "000100", "", ""); // for convenience, "B" is used as "B"ranch here
  gAsmb["bne"] = AsmT(2, 3, "B", "000101", "", "");
  gAsmb["blt"] = AsmT(2, 3, "B", "000111", "", "");
  gAsmb["j"] = AsmT(0, 1, "J", "000010", "", "");
  gAsmb["jr"] = AsmT(1, 1, "R", "000000", "000000000000000", "001000");
  gAsmb["jal"] = AsmT(0, 1, "J", "000011", "", "");

  gAsmb["move"] = AsmT(2, 2, "I", "001110", "", ""); // reg <- reg
  gAsmb["subi"] = AsmT(2, 3, "I", "000110", "", "");
  gAsmb["fadd"] = AsmT(3, 3, "R", "010000", "00000", "000100");
  gAsmb["fsub"] = AsmT(3, 3, "R", "010000", "00000", "000101");
  gAsmb["fmul"] = AsmT(3, 3, "R", "010000", "00000", "000110");
  gAsmb["fdiv"] = AsmT(3, 3, "R", "010000", "00000", "010011");
  gAsmb["finv"] = AsmT(2, 2, "R", "010000", "00000", "000111");
  gAsmb["fabs"] = AsmT(2, 2, "R", "010000", "00000", "010100");
  gAsmb["flw"] = AsmT(-2, 3, "I", "010100", "", "");
  gAsmb["fsw"] = AsmT(-2, 3, "I", "010101", "", "");
  gAsmb["fbeq"] = AsmT(2, 3, "B", "010001", "", "");
  gAsmb["fbne"] = AsmT(2, 3, "B", "010010", "", "");
  gAsmb["fblt"] = AsmT(2, 3, "B", "010011", "", "");
  gAsmb["fmove"] = AsmT(2, 2, "I", "010000", "00000", "001000"); // freg <- freg
  gAsmb["mfc1"] = AsmT(2, 2, "I", "010000", "00000", "001001"); // reg <- freg
  gAsmb["mtc1"] = AsmT(2, 2, "I", "010000", "00000", "001010"); // freg <- reg
  gAsmb["fneg"] = AsmT(2, 2, "R", "010000", "00000", "001011");

  gAsmb["li"] = AsmT(1, 2, "I", "000001", "", "");
  gAsmb["lil"] = AsmT(1, 2, "J", "001001", "", "");
  // library
  gAsmb["sqrt"] = AsmT(2, 2, "R", "010000", "00000", "001100");
  gAsmb["sin"] = AsmT(2, 2, "R", "010000", "00000", "001101");
  gAsmb["cos"] = AsmT(2, 2, "R", "010000", "00000", "001110");
  gAsmb["atan"] = AsmT(2, 2, "R", "010000", "00000", "001111");
  gAsmb["floor"] = AsmT(2, 2, "R", "010000", "00000", "010000");
  gAsmb["itof"] = AsmT(2, 2, "R", "010000", "00000", "010001");
  gAsmb["ftoi"] = AsmT(2, 2, "R", "010000", "00000", "010010");
  gAsmb["print_int"] = AsmT(1, 1, "I", "100000", "00000", "000000");
  gAsmb["print_char"] = AsmT(1, 1, "I", "100010", "00000", "000000");
  gAsmb["read_int"] = AsmT(1, 1, "I", "100001", "00000", "000000");
  gAsmb["read_float"] = AsmT(1, 1, "I", "010110", "00000", "000000");

  gAsmb["hlt"] = AsmT(0, 0, "I", "001111", "00000", "000000");

  // set register number
  gReg2bin["$zero"] = gReg2bin["$fv"] = "00000";
  gReg2bin["$v0"] = gReg2bin["$f0"] = "00001";
  for (int i = 0; i < 27; i++) {
    gReg2bin["$a" + to_string(i)] = gReg2bin["$f" + to_string(i + 1)]  = i2bin(i + 2, 5);
  }
  gReg2bin["$sp"] = gReg2bin["$f28"] = "11101";
  gReg2bin["$fp"] = gReg2bin["$f29"] = "11110";
  gReg2bin["$ra"] = gReg2bin["$f30"] = "11111";
}
