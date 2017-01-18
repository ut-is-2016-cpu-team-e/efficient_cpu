#include <iostream>
#include <iomanip>
#include <sstream>
#include <cstdlib>
#include <string>
#include <cmath>
#include <cstdint>
#include <chrono>
#include <cassert>
#include <cmath>
#include <math.h>
#include <string.h>
#include <ncurses.h>
#include "execute.h"
#include "cpu.h"
#include "show.h"
#include "tools.h"

Exec::Exec(int argc, char** argv) :
  mCpu(nullptr), mElapsed(0), mInstCnt(0), mInst(0), mSign(0), mOpCode(0), mRs(0), mRt(0), mRd(0),
  mShamt(0), mFunct(0), mImm(0), mAddress(0), mFrs(0), mFrt(0), mX(0), mY(0),
  mIntVal(0), mFloatVal(0), mPrint(nullptr) {
  mCpu = new Cpu;
  if (argc == 3) {
    if ((mPrint = fopen(argv[2], "r")) == nullptr) {
      cout << "can't open *.sld file." << endl;
      assert(false);
    }
  }
}

int32_t f_to_int32(float a){
  union {
    uint32_t i;
    float f;
  } u;

  u.f = a;
  return u.i;
}

Exec::~Exec() {
  delete mCpu;
  if (mPrint) { fclose(mPrint); }
}

void Exec::executeR() {
  Cpu& cpu = *mCpu;

  mRd = bitRange(mInst, 11, 15);
  mFunct = bitRange(mInst, 0, 5);

  cpu.incPc();

  switch (mFunct) {
    // add
  case 0x20 : cpu[mRd] = cpu[mRs] + cpu[mRt];
              cpu.incInstCnt(Cpu::NUM_ADD);
              break;
    // sub
  case 0x22 : cpu[mRd] = cpu[mRs] - cpu[mRt];
              cpu.incInstCnt(Cpu::NUM_SUB);
              break;
    // mul
  case 0x21 : cpu[mRd] = cpu[mRs] * cpu[mRt];
              cpu.incInstCnt(Cpu::NUM_MUL);
              break;
    // and
  case 0x24 : cpu[mRd] = cpu[mRs] & cpu[mRt];
              cpu.incInstCnt(Cpu::NUM_AND);
              break;
    // or
  case 0x25 : cpu[mRd] = cpu[mRs] | cpu[mRt];
              cpu.incInstCnt(Cpu::NUM_OR);
              break;
    // xor
  case 0x27 : cpu[mRd] = cpu[mRs] ^ cpu[mRt];
              cpu.incInstCnt(Cpu::NUM_XOR);
              break;
    // neg
  case 0x26 : cpu[mRd] = -cpu[mRs];
              cpu.incInstCnt(Cpu::NUM_NEG);
              break;
    // sll
  case 0x00 : mShamt = bitRange(mInst, 6, 10);
              cpu[mRd] = cpu[mRt] << mShamt;
              cpu.incInstCnt(Cpu::NUM_SLL);
              break;
    // srl
  case 0x02 : mShamt = bitRange(mInst, 6, 10);
              cpu[mRd] = cpu[mRt] >> mShamt;
              cpu.incInstCnt(Cpu::NUM_SRL);
              break;
    // sla
  case 0x03 : mShamt = bitRange(mInst, 6, 10);
              mSign = cpu[mRt] & 0x80000000;
              if (mSign) {
                cpu[mRd] = (cpu[mRt] << mShamt) | mSign;
              } else {
                cpu[mRd] = (cpu[mRt] << mShamt) & 0x7fffffff;
              }
              cpu.incInstCnt(Cpu::NUM_SLA);
              break;
    // sra
  case 0x04 : mShamt = bitRange(mInst, 6, 10);
              mSign = cpu[mRt] & 0x80000000;
              for (uint32_t i = 0; i < mShamt - 1; i++) {
                mSign = mSign | (mSign >> 1);
              }
              cpu[mRd] = (cpu[mRt] >> mShamt) | mSign;
              cpu.incInstCnt(Cpu::NUM_SRA);
              break;
    // sl2add
  case 0x05 : mSign = cpu[mRs] & 0x80000000;
              if (mSign) {
                cpu[mRs] = (cpu[mRs] << 2) | mSign;
              } else {
                cpu[mRs] = (cpu[mRs] << 2) & 0x7fffffff;
              }
              cpu[mRd] = cpu[mRs] + cpu[mRt];
              cpu.incInstCnt(Cpu::NUM_SL2ADD);
              break;
    // jr
  case 0x08 : cpu.getPc() = cpu[mRs];
              cpu.incInstCnt(Cpu::NUM_JR);
              break;
  default : mvaddstr(mY-1, 0, "Failed to load the instruction.");
            assert(false);
  }
}

void Exec::executeF() {
  Cpu& cpu = *mCpu;

  mRd = bitRange(mInst, 11, 15);
  mFunct = bitRange(mInst, 0, 5);

  mU.reg = cpu(mRs);
  mFrs = mU.freg;
  mU.reg = cpu(mRt);
  mFrt = mU.freg;

  cpu.incPc();

  if (mOpCode == 16) {
    switch (mFunct) {
    // fadd
    case 0x04 : mU.freg = mFrs + mFrt;
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_FADD);
                break;
    // fsub
    case 0x05 : mU.freg = mFrs - mFrt;
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_FSUB);
                break;
    // fmul
    case 0x06 : mU.freg = mFrs * mFrt;
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_FMUL);
                break;
    // fdiv
    case 0x13 : mU.freg = mFrs / mFrt;
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_FDIV);
                break;
    // fmadd
    case 0x15 : mShamt = bitRange(mInst, 6, 10);
                mFrs = mFrs * mFrt;
                mU.reg = cpu(mShamt);
                mU.freg = mFrs + mU.freg;
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_FMADD);
                break;
    // finv
    case 0x07 : mU.freg = 1.0 / mFrs;
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_FINV);
                break;
    // fabs
    case 0x14 : mU.freg = fabs(mFrs);
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_FABS);
                break;
    // fneg
    case 0x0b : cpu(mRd) = cpu(mRs) ^ 0x80000000;
                cpu.incInstCnt(Cpu::NUM_FNEG);
                break;
    // fmove
    case 0x08 : mU.freg = mFrs;
                cpu(mRt) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_FMOVE);
                break;
    // mfc1
    case 0x09 : mU.freg = mFrs;
                cpu[mRt] = mU.reg;
                cpu.incInstCnt(Cpu::NUM_MFC1);
                break;
     // mtc1
    case 0x0a : cpu(mRt) = cpu[mRs];
                cpu.incInstCnt(Cpu::NUM_MTC1);
                break;
    // sqrt
    case 0x0c : mU.freg = sqrt(mFrs);
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_FSQRT);
                break;
    // sin
    case 0x0d : mU.freg = sin(mFrs);
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_SIN);
                break;
    // cos
    case 0x0e : mU.freg = cos(mFrs);
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_COS);
                break;
    // atan
    case 0x0f : mU.freg = atan(mFrs);
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_ATAN);
                break;
    // floor
    case 0x10 : mU.freg = floor(mFrs);
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_FLOOR);
                break;
    // itof
    case 0x11 : mU.freg = static_cast<float>(cpu[mRs]);
                cpu(mRd) = mU.reg;
                cpu.incInstCnt(Cpu::NUM_ITOF);
                break;
    // ftoi
    case 0x12 : cpu[mRd] = static_cast<int32_t>(mFrs);
                cpu.incInstCnt(Cpu::NUM_FTOI);
                break;

    default : mvaddstr(mY-1, 0, "Failed to load the instruction.");
              assert(false);
    }
  } else if (mOpCode == 17) {
    // fbeq
    if (mFrs == mFrt) {
      extendSign16(mImm);
      cpu.setDiffPc(mImm);
      cpu.incPc();
    }
    cpu.incInstCnt(Cpu::NUM_FBEQ);
  } else if (mOpCode == 18) {
    // fbne
    if (mFrs != mFrt) {
      extendSign16(mImm);
      cpu.setDiffPc(mImm);
      cpu.incPc();
    }
    cpu.incInstCnt(Cpu::NUM_FBNE);
  } else if (mOpCode == 19) {
    // fblt
    if (mFrs < mFrt) {
      extendSign16(mImm);
      cpu.setDiffPc(mImm);
      cpu.incPc();
    }
    cpu.incInstCnt(Cpu::NUM_FBLT);
  } else if (mOpCode == 20) {
    // flw
    extendSign16(mImm);
    cpu(mRt) = cpu.getRam((cpu[mRs] + mImm) * 4);
    cpu.incInstCnt(Cpu::NUM_FLW);
  } else if (mOpCode == 21) {
    // fsw
    extendSign16(mImm);

    cpu.getRam((cpu[mRs] + mImm) * 4) = cpu(mRt);
    cpu.incInstCnt(Cpu::NUM_FSW);
  } else if (mOpCode == 22) {
    // read_float
    refresh();
    clrtobot();
    if (fscanf(mPrint, "%f", &mFloatVal)) {
      mU.freg = mFloatVal;
      cpu(mRs) = mU.reg;
      mvprintw(mY-1, 0, "read_float : %f", mFloatVal);
    } else { cout << "can't open *.sld file." << endl; assert(false); }

    cpu.incInstCnt(Cpu::NUM_READ_FLOAT);
  } else if (mOpCode == 23) {
    // bltfabs
    if (fabs(mFrs) < mFrt) {
      extendSign16(mImm);
      cpu.setDiffPc(mImm);
      cpu.incPc();
    }
    cpu.incInstCnt(Cpu::NUM_BLTFABS);
  } else if (mOpCode == 24) {
    // flihi
    /*uint32_t i = f_to_int32(mU.freg);
    cpu(mRt) = ((mImm << 16) | ((i << 16) >> 16));*/
    cpu(mRt) = mImm << 16;
    cpu.incInstCnt(Cpu::NUM_FLIHI);
  } else if (mOpCode == 25) {
    // flilo
    uint32_t i = f_to_int32(mU.freg);
    cpu(mRt) = (mImm | ((i >> 16) << 16));
    cpu.incInstCnt(Cpu::NUM_FLILO);
  } else {
    mvaddstr(mY-1, 0, "Failed to load the instruction.");
    assert(false);
  }
}

void Exec::execRom() {
  Cpu& cpu = *mCpu;

  mInst = cpu.getRom(cpu.getPc());
  mOpCode = bitRange(mInst, 26, 31);
  mRs = bitRange(mInst, 21, 25);
  mRt = bitRange(mInst, 16, 20);


  // I format
  mImm = bitRange(mInst, 0, 15);

  cpu.getCurrentPc() = cpu.getPc();

  if (mInst == 0 || (mOpCode != 0 && mOpCode != 16 && mOpCode != 17
        && mOpCode != 18 && mOpCode != 19 && mOpCode != 20 && mOpCode != 21
        && mOpCode != 22 && mOpCode != 23 && mOpCode != 24 && mOpCode != 25)) {
    cpu.incPc();
  }
  // nop
  if (mInst == 0) {
    cpu.incInstCnt(Cpu::NUM_NOP);
    return;
  }
  // others
  switch (mOpCode) {
    // R format
  case 0x00 : executeR();
              break;
    // Float format
  case 0x10 : case 0x11 : case 0x12 : case 0x13 : case 0x14 : case 0x15 : case 0x16 :
  case 0x17 : case 0x18 : case 0x19 :
              executeF();
              break;
    // I format
    // addi
  case 0x08 : extendSign16(mImm);
              cpu[mRt] = cpu[mRs] + mImm;
              cpu.incInstCnt(Cpu::NUM_ADDI);
              break;
    // lw
  case 0x23 : extendSign16(mImm);
              cpu[mRt] = cpu.getRam((cpu[mRs] + mImm) * 4);
              cpu.incInstCnt(Cpu::NUM_LW);
              break;
    // sw
  case 0x2b : extendSign16(mImm);
              cpu.getRam((cpu[mRs] + mImm) * 4) = cpu[mRt];
              cpu.incInstCnt(Cpu::NUM_SW);
              break;
    // andi
  case 0x0c : cpu[mRt] = cpu[mRs] & mImm;
              cpu.incInstCnt(Cpu::NUM_ANDI);
              break;
    // ori
  case 0x0d : cpu[mRt] = cpu[mRs] | mImm;
              cpu.incInstCnt(Cpu::NUM_ORI);
              break;
    // beq
  case 0x04 : if (cpu[mRs] == cpu[mRt]) {
                extendSign16(mImm);
                cpu.setDiffPc(mImm);
                cpu.incPc();
              }
              cpu.incInstCnt(Cpu::NUM_BEQ);
              break;
    // bne
  case 0x05 : if (cpu[mRs] != cpu[mRt]) {
                extendSign16(mImm);
                cpu.setDiffPc(mImm);
                cpu.incPc();
              }
              cpu.incInstCnt(Cpu::NUM_BNE);
              break;
    // blt
  case 0x07 : if (cpu[mRs] < cpu[mRt]) {
                extendSign16(mImm);
                cpu.setDiffPc(mImm);
                cpu.incPc();
              }
              cpu.incInstCnt(Cpu::NUM_BLT);
              break;

    // bni
  case 0x24 : if ((mRt >> 4) & 0x00000001) {
                mRt |= 0xfffffff0;
              }
              if (cpu[mRs] != static_cast<int32_t>(mRt)) {
                extendSign16(mImm);
                cpu.setDiffPc(mImm);
                cpu.incPc();
              }
              cpu.incInstCnt(Cpu::NUM_BNI);
              break;
    // move
  case 0x0e : cpu[mRt] = cpu[mRs];
              cpu.incInstCnt(Cpu::NUM_MOVE);
              break;
    // subi
  case 0x06 : extendSign16(mImm);
              cpu[mRt] = cpu[mRs] - mImm;
              cpu.incInstCnt(Cpu::NUM_SUBI);
              break;
    // li
  case 0x01 : extendSign16(mImm);
              cpu[mRt] = mImm;
              cpu.incInstCnt(Cpu::NUM_LI);
              break;
    // print_int
  case 0x20 : refresh();
              mvprintw(mY-1, 0, "print_int : %d >> \"sim.ppm\"", cpu[mRs]);
              clrtobot();
              fprintf(cpu.ppm, "%d", cpu[mRs]);
              fflush(cpu.ppm);
              cpu.incInstCnt(Cpu::NUM_PRINT_INT);
              break;
    // read_int
  case 0x21 : refresh();
              clrtobot();
              if (fscanf(mPrint, "%d", &mIntVal)) {
                cpu[mRs] = mIntVal;
                mvprintw(mY-1, 0, "read_int : %d", mIntVal);
              }
              else { cout << "can't open *.sld file." << endl; assert(false); }

              cpu.incInstCnt(Cpu::NUM_READ_INT);
              break;
    // print_char
  case 0x22 : refresh();
              mvprintw(mY-1, 0, "print_char : %d >> \"sim.ppm\"", cpu[mRs]);
              clrtobot();
              fprintf(cpu.ppm, "%c", cpu[mRs]);
              fflush(cpu.ppm);
              cpu.incInstCnt(Cpu::NUM_PRINT_CHAR);
              break;
    // hlt
  case 0x0f : cpu.isHltOn = true;
              cpu.incInstCnt(Cpu::NUM_HLT);
              break;
    // jout
  case 0x3f : cpu.isHltOn = true;
              cpu.incInstCnt(Cpu::NUM_JOUT);
              break;

    // J format
    // j
  case 0x02 : mAddress = bitRange(mInst, 0, 25);
              cpu.getPc() = mAddress;
              cpu.mLabelCnt[mAddress]++;
              cpu.incInstCnt(Cpu::NUM_J);
              break;
    // jal
  case 0x03 : mAddress = bitRange(mInst, 0, 25);
              cpu[31] = cpu.getPc();
              cpu.getPc() = mAddress;
              cpu.mLabelCnt[mAddress]++;
              cpu.incInstCnt(Cpu::NUM_JAL);
              break;
     // lil
  case 0x09 : extendSign16(mImm);
              cpu[mRs] = mImm;
              cpu.incInstCnt(Cpu::NUM_LIL);
              break;

  default : mvaddstr(mY-1, 0, "Failed to load the instruction.");
            assert(false);
  }
}
// **********************************************************************************************************************************//
void Exec::run() {
  mvaddstr(mY-1, 0, "The program has been started already. Start it from the beginning? (y or n)");
  cbreak();
  int runCmd = getch();
  if (runCmd == 'y') {
    delete mCpu;
    mCpu = new Cpu;
    mInstCnt = 0;
    if (mPrint) { fseek(mPrint, 0, SEEK_SET); }

    move(mY-2, 0);
    clrtoeol();

    auto start = chrono::system_clock::now(); // time start
    do {
      execRom();
      mInstCnt++;

      if (mInstCnt % 10000000 == 0) {
        showAll(mY, mX, *mCpu);
        refresh();
      }

      if (mBreakPoint.find(mCpu->getPc()) != mBreakPoint.end()) {
        if (mBreakPoint[mCpu->getPc()] == true) {
          clear();
          mvprintw(mY-1, 0, "Stop at the breakpoint [InstNo.%d]", mCpu->getPc());
          break;
        }
      }
    } while (!mCpu->isHltOn);
    auto end = chrono::system_clock::now(); // time end

    mElapsed = chrono::duration_cast<chrono::seconds>(end-start).count();
  }
}

void Exec::_continue() {
  move(mY-2, 0);
  clrtoeol();

  do {
    execRom();
    mInstCnt++;

    if (mInstCnt % 10000000 == 0) {
      showAll(mY, mX, *mCpu);
      refresh();
    }

    if (mBreakPoint.find(mCpu->getPc()) != mBreakPoint.end()) {
      if (mBreakPoint[mCpu->getPc()] == true) {
        clear();
        mvprintw(mY-1, 0, "Stop at the breakpoint [InstNo.%d]", mCpu->getPc());
        break;
      }
    }
  } while (!mCpu->isHltOn);
}

void Exec::_break(stringstream& ss, string* op) {
  ss >> op[1];
  if (op[1] == "") {
    mvaddstr(mY-1, 0, "Breakpoint number has not been selected. (usage : b [InstNo.])");
    return;
  } else if (!isDigit(op[1])) {
    mvprintw(mY-1, 0, "%s is not a number.", op[1].c_str());
    return;
  }
  mBreakPoint[static_cast<uint32_t>(stoi(op[1]))] = true;
  mvprintw(mY-1, 0, "Breakpoint [InstNo.%s] has just been registered.", op[1].c_str());
}

void Exec::info() {
  mvaddstr(0, 0, "(Please press any key to return.)");
  move(2, 0);
  for (auto itr = mBreakPoint.begin(); itr != mBreakPoint.end(); itr++) {
    if (itr->second) {
      addstr("<Y> ");
    } else {
      addstr("<N> ");
    }
    printw("%05d| %s\n", itr->first, mCpu->mAssembly[itr->first].c_str());
  }
  getch();
}

void Exec::enable(stringstream& ss, string* op) {
  ss >> op[1];
  if (op[1] == "") {
    mvaddstr(mY-1, 0, "Breakpoint number has not been selected. (usage : e [InstNo.])");
    return;
  } else if (!isDigit(op[1])) {
    mvprintw(mY-1, 0, "%s is not a number.", op[1].c_str());
    return;
  }
  if (mBreakPoint.find(static_cast<uint32_t>(stoi(op[1]))) != mBreakPoint.end()) {
    mBreakPoint[static_cast<uint32_t>(stoi(op[1]))] = true;
    mvprintw(mY-1, 0, "Breakpoint [InstNo.%s] has just been enabled.", op[1].c_str());
  } else {
    mvaddstr(mY-1, 0, "This breakpoint has not been registered.");
  }
}

void Exec::disable(stringstream& ss, string* op) {
  ss >> op[1];
  if (op[1] == "") {
    mvaddstr(mY-1, 0, "Breakpoint number has not been selected. (usage : d [InstNo.])");
    return;
  } else if (!isDigit(op[1])) {
    mvprintw(mY-1, 0, "%s is not a number.", op[1].c_str());
    return;
  }
  if (mBreakPoint.find(static_cast<uint32_t>(stoi(op[1]))) != mBreakPoint.end()) {
    mBreakPoint[static_cast<uint32_t>(stoi(op[1]))] = false;
    mvprintw(mY-1, 0, "Breakpoint [InstNo.%s] has just been disabled.", op[1].c_str());
  } else {
    mvaddstr(mY-1, 0, "This breakpoint has not been registered.");
  }
}

void Exec::step(stringstream& ss, string* op) {
  ss >> op[1];
  if (op[1] != "") {
    if (isDigit(op[1])) {
      unsigned long long cnt = stoull(op[1]);
      for (unsigned long long i = 0; i < cnt; i++) {
        execRom();
        mInstCnt++;
        if (mCpu->isHltOn) {
          break;
        }
      }
    } else {
      mvprintw(mY-1, 0, "%s is not a number.", op[1].c_str());
      return;
    }
  } else {
    execRom();
    mInstCnt++;
  }
}

void Exec::label() {
  int input = 0, size = 0;
  int i = 2, j = 0;
  string str;

  mvaddstr(0, 0, "(Please press Enter to return)\n");
  addstr("Label name > ");
  cbreak();

  while (1) {
    move(1, 13 + str.size());

    switch (input = getch()) {
    case 8 : case 127 : case KEY_BACKSPACE : case KEY_DC :
      if (!str.empty()) {
        str.pop_back();
      }
      move(1, 13 + str.size());
      delch();
      delch();
      break;

    case '\n' : return;

    default : str.push_back(input);
    }

    size = str.size();
    clrtobot();
    for (auto itr = mCpu->mLabel.begin(); itr != mCpu->mLabel.end(); itr++) {
      if (itr->second.compare(0, size, str) == 0) {
        mvprintw(i++, j, "|%-40s %10d", itr->second.c_str(), mCpu->mLabelCnt[itr->first]);
      }
      if (i == mY) {
        i = 2; j += 60;
        if (j >= 180) { break; }
      }
    }
    i = 2; j = 0;
  }
}

void Exec::showPpm() {
  scrollok(stdscr, TRUE);
  wscrl(stdscr, mY);
  int tmp;
  fseek(mCpu->ppm, 0, SEEK_SET);
  mvaddstr(0, 0, "(Please press any key to return.)");
  move(2, 0);
  while ((tmp = fgetc(mCpu->ppm)) != EOF) {
    printw("%c", tmp);
  }
  getch();
}

void Exec::help() {
  mvaddstr(0, 0, "(Please press any key to return.)");
  move(2, 0);
  addstr("'run' or 'r'               : start the program from the beginning, until first breakpoint\n");
  addstr("'break' or 'b' [InstNo.]   : set the breakpoint [InstNo.]\n");
  addstr("'continue' or 'c'          : continue the program, until next breakpoint\n");
  addstr("'info' or 'i'              : see the information about breakpoints\n");
  addstr("'enable' or 'e' [InstNo.]  : enable the breakpoint [InstNo.]\n");
  addstr("'disable' or 'd' [InstNo.] : disable the breakpoint [InstNo.]\n");
  addstr("'step' or 's' [count]      : step [count] times\n");
  addstr("'f'                        : display label count\n");
  addstr("'w'                        : display sim.ppm file\n");
  addstr("'exit'                     : stop");

  getch();
}

void Exec::mainLoop() {
  initscr();
  keypad(stdscr, TRUE);
  start_color();
  init_pair(1, COLOR_BLACK, COLOR_WHITE);
  init_pair(2, COLOR_RED, COLOR_WHITE);
  bkgd(COLOR_PAIR(1));
  char* str = new char [100];
  getmaxyx(stdscr, mY, mX);

  showAll(mY, mX, *mCpu);

  while (1) {
    getstr(str);
    getmaxyx(stdscr, mY, mX);
    string cmd = str;
    stringstream ss(cmd);
    string op[2];
    ss >> op[0];
    erase();
    // run
    if (op[0] == "run" || op[0] == "r") {
      run();
      // continue to next breakpoint
    } else if (op[0] == "continue" || op[0] == "c") {
      _continue();
      // break Inst.No
    } else if (op[0] == "break" || op[0] == "b") {
      _break(ss, op);
      // information about breakpoint
    } else if (op[0] == "info" || op[0] == "i") {
      info();
      // enable breakpoint
    } else if (op[0] == "enable" || op[0] == "e") {
      enable(ss, op);
      // disable breakpoint
    } else if (op[0] == "disable" || op[0] == "d") {
      disable(ss, op);
      // step N
    } else if (op[0] == "step" || op[0] == "s") {
      step(ss, op);
      // display Label Count
    } else if (op[0] == "f") {
      label();
      clear();
      // display sim.ppm file
    } else if (op[0] == "w") {
      showPpm();
      clear();
      // help
    } else if (op[0] == "help" || op[0] == "h") {
      help();
      // exit
    } else if (op[0] == "exit") {
      break;
    } else { mvaddstr(mY-1, 0, "Unknown command."); }

    if (mCpu->isHltOn) {
      showAll(mY, mX, *mCpu);
      mvaddstr(mY-1, 0, "The program has been finished.");
      printw(" (Elapsed time : %f sec)", mElapsed);
      clrtobot();
    }
    showAll(mY, mX, *mCpu);
    refresh();
  }
  delete [] str;
  endwin();
}
