#include <iostream>
#include <string>
#include <map>
#include "show.h"
using namespace std;

void showReg(Cpu& cpu) {
  cout << string(70, '-') << endl;
  cout << "<PC>" << endl;
  cout << "Next InstNo. is : " << cpu.getPc() << endl << endl;
  cout << "<Register Status>" << endl;

  cout << "$zero(reg[0])  : " << cpu[0] << endl;
  cout << "$v0(reg[1])    : " << cpu[1] << endl;
  cout << "$a0(reg[2])    : " << cpu[2] << endl;
  cout << "$a1(reg[3])    : " << cpu[3] << endl;
  cout << "$a2(reg[4])    : " << cpu[4] << endl;
  cout << "$a3(reg[5])    : " << cpu[5] << endl;
  cout << "$a4(reg[6])    : " << cpu[6] << endl;
  cout << "$a5(reg[7])    : " << cpu[7] << endl;
  cout << "$a6(reg[8])    : " << cpu[8] << endl;
  cout << "$a7(reg[9])    : " << cpu[9] << endl;
  cout << "$a8(reg[10])   : " << cpu[10] << endl;
  cout << "$a9(reg[11])   : " << cpu[11] << endl;
  cout << "$a10(reg[12])  : " << cpu[12] << endl;
  cout << "$a11(reg[13])  : " << cpu[13] << endl;
  cout << "$a12(reg[14])  : " << cpu[14] << endl;
  cout << "$a13(reg[15])  : " << cpu[15] << endl;
  cout << "$a14(reg[16])  : " << cpu[16] << endl;
  cout << "$a15(reg[17])  : " << cpu[17] << endl;
  cout << "$a16(reg[18])  : " << cpu[18] << endl;
  cout << "$a17(reg[19])  : " << cpu[19] << endl;
  cout << "$a18(reg[20])  : " << cpu[20] << endl;
  cout << "$a19(reg[21])  : " << cpu[21] << endl;
  cout << "$a20(reg[22])  : " << cpu[22] << endl;
  cout << "$a21(reg[23])  : " << cpu[23] << endl;
  cout << "$a22(reg[24])  : " << cpu[24] << endl;
  cout << "$a23(reg[25])  : " << cpu[25] << endl;
  cout << "$a24(reg[26])  : " << cpu[26] << endl;
  cout << "$a25(reg[27])  : " << cpu[27] << endl;
  cout << "$a26(reg[28])  : " << cpu[28] << endl;
  cout << "$sp(reg[29])   : " << cpu[29] << endl;
  cout << "$fp(reg[30])   : " << cpu[30] << endl;
  cout << "$ra(reg[31])   : " << cpu[31] << endl;
}

void showInstCnt(Cpu& cpu) {
  map<Cpu::InstNumber, int>& a = cpu.getInstCnt();
  cout << string(70, '-') << endl;
  cout << "<Instruction Counter>" << endl;
  cout << "Instruction : " << "Count" << endl;

  cout << "nop         : " << a[Cpu::NUM_NOP] << endl;
  cout << "add         : " << a[Cpu::NUM_ADD] << endl;
  cout << "sub         : " << a[Cpu::NUM_SUB] << endl;
  cout << "addi        : " << a[Cpu::NUM_ADDI] << endl;
  cout << "lw          : " << a[Cpu::NUM_LW] << endl;
  cout << "sw          : " << a[Cpu::NUM_SW] << endl;
  cout << "and         : " << a[Cpu::NUM_AND] << endl;
  cout << "andi        : " << a[Cpu::NUM_ANDI] << endl;
  cout << "or          : " << a[Cpu::NUM_OR] << endl;
  cout << "ori         : " << a[Cpu::NUM_ORI] << endl;
  cout << "slt         : " << a[Cpu::NUM_SLT] << endl;
  cout << "slti        : " << a[Cpu::NUM_SLTI] << endl;
  cout << "sll         : " << a[Cpu::NUM_SLL] << endl;
  cout << "srl         : " << a[Cpu::NUM_SRL] << endl;
  cout << "beq         : " << a[Cpu::NUM_BEQ] << endl;
  cout << "bne         : " << a[Cpu::NUM_BNE] << endl;
  cout << "j           : " << a[Cpu::NUM_J] << endl;
  cout << "jr          : " << a[Cpu::NUM_JR] << endl;
  cout << "jal         : " << a[Cpu::NUM_JAL] << endl << endl;
  
  cout << "move        : " << a[Cpu::NUM_MOVE] << endl;
  cout << "subi        : " << a[Cpu::NUM_SUBI] << endl;
  cout << "li          : " << a[Cpu::NUM_LI] << endl;
  cout << "hlt         : " << a[Cpu::NUM_HLT] << endl << endl;

  int total = 0;
  for (auto i = a.begin(); i != a.end(); i++) {
    total += i->second;
  }
  cout << "(total)     : " << total << endl << endl;
}
