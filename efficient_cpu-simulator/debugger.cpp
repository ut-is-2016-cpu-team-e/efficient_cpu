#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <sstream>
#include <thread>
#include <unistd.h>
#include "cpu.h"
#include "debugger.h"
#include "execute.h"
#include "tools.h"
#include "show.h"
using namespace std;

Debug::Debug(unordered_map<string, string>& option) : mCpu(0), mInstCnt(0) {
  mCpu = new Cpu(option);
}

Debug::~Debug() {
  delete mCpu;
}

void Debug::run(unordered_map<string, string>& option) {
  cout << "The program has been started already." << endl << "Start it from the beginning? (y or n)" << endl;
  string runCmd;
  cin.clear();
  getline(cin, runCmd);
  if (runCmd == "y") {
    delete mCpu;
    mCpu = new Cpu(option);
    mInstCnt = 0;
    do {
      execRom(*mCpu);
      mInstCnt++;
      if (mBreakPoint.find(mCpu->getPc()) != mBreakPoint.end()) {
        if (mBreakPoint[mCpu->getPc()] == true) {
          showInst(*mCpu);
          showCurrentInst(*mCpu);
          cout << "Stop at the breakpoint [InstNo." << setw(3) << setfill('0') << mCpu->getPc() << "]." << endl;
          break;
        }
      }
    } while (!mCpu->isHltOn);
  } 
}

void Debug::_continue() {
  do {
    execRom(*mCpu);
    mInstCnt++;
    if (mBreakPoint.find(mCpu->getPc()) != mBreakPoint.end()) {
      if (mBreakPoint[mCpu->getPc()] == true) { 
        showInst(*mCpu);
        showCurrentInst(*mCpu);
        cout << "Stop at the breakpoint [InstNo." << setw(3) << setfill('0') << mCpu->getPc() << "]." << endl;
        break;
      }
    }
  } while (!mCpu->isHltOn);
}

void Debug::_break(stringstream& ss, string* op) {
  ss >> op[1];
  if (op[1] == "") { 
    cout << "Please input the breakpoint number." << endl;
    return; 
  }
  mBreakPoint[static_cast<uint32_t>(stoi(op[1]))] = true;
  cout << "Breakpoint [InstNo." + op[1] + "] has just been registered." << endl;
}

void Debug::info() {
  for (auto itr = mBreakPoint.begin(); itr != mBreakPoint.end(); itr++) {
    cout << "InstNo." << setw(3) << setfill('0') << itr->first << "  ";
    if (itr->second) {
      cout << "y";
    } else {
      cout << "n";
    }
    cout << endl;
  }
}

void Debug::enable(stringstream& ss, string* op) {
  ss >> op[1];
  if (op[1] == "") {
    cout << "Please input the breakpoint number." << endl;
    return;
  }
  if (mBreakPoint.find(static_cast<uint32_t>(stoi(op[1]))) != mBreakPoint.end()) {
    mBreakPoint[static_cast<uint32_t>(stoi(op[1]))] = true;
    cout << "Breakpoint [InstNo." + op[1] + "] has just been enabled." << endl;
  } else {
    cout << "This breakpoint has not been registered." << endl;
  }
}

void Debug::disable(stringstream& ss, string* op) {
  ss >> op[1];
  if (op[1] == "") {
    cout << "Please input the breakpoint number." << endl;
    return;
  }
  if (mBreakPoint.find(static_cast<uint32_t>(stoi(op[1]))) != mBreakPoint.end()) {
    mBreakPoint[static_cast<uint32_t>(stoi(op[1]))] = false;
    cout << "Breakpoint [InstNo." + op[1] + "] has just been disabled." << endl;
  } else {
    cout << "This breakpoint has not been registered." << endl;
  }
}

void Debug::step(stringstream& ss, string* op) {
  ss >> op[1];
  if (op[1] != "") {
    int cnt = stoi(op[1]);
    for (int i = 0; i < cnt; i++) {
      execRom(*mCpu);
      mInstCnt++;
      if (mCpu->isHltOn) {
        break;
      }
    }
  } else {
    execRom(*mCpu);
    mInstCnt++;
  }
  showInst(*mCpu);
  showCurrentInst(*mCpu);
}

void Debug::showPM10() {
  showInst(*mCpu);
  showCurrentInst(*mCpu);
}

void Debug::showAll() {
  showInstAll(*mCpu);
  showCurrentInst(*mCpu);
}

void Debug::showSt() {
  showStatus(*mCpu);
  showCurrentInst(*mCpu);
}

void Debug::help() {
  cout << "'run' or 'r' : start the program from the beginning, until first breakpoint" << endl;
  cout << "'break' or 'b' [InstNo.] : set the breakpoint [InstNo.]" << endl;
  cout << "'continue' or 'c' : continue the program, until next breakpoint" << endl;
  cout << "'info' or 'i' : see the information about breakpoints" << endl;
  cout << "'enable' or 'e' [InstNo.] : enable the breakpoint [InstNo.]" << endl;
  cout << "'disable' or 'd' [InstNo.] : disable the breakpoint [InstNo.]" << endl;
  cout << "'step' or 's' [count] : step [count] times" << endl;
  cout << "'g' : display PC-10 ~ PC+10 instructions" << endl;
  cout << "'v' : display all instructions" << endl;
  cout << "'f' : display instruction and register status" << endl;
  cout << "'exit' : stop" << endl;
}
void Debug::debugLoop(unordered_map<string, string>& option) {
  cout << "(debug mode)" << endl;
  string cmd;
  while (1) {
    cout << ">";
    cin.clear();
    getline(cin, cmd);
    stringstream ss(cmd);
    string op[2];
    ss >> op[0];
    // run
    if (op[0] == "run" || op[0] == "r") {
      run(option); 
      // continue to next breakpoint
    } else if (op[0] == "continue" || op[0] == "c") {
      _continue();    
      // break Inst.No
    } else if (op[0] == "break" || op[0] == "b") {
      _break(ss, op);
      continue;
      // information about breakpoint
    } else if (op[0] == "info" || op[0] == "i") {
      info();    
      continue;
    // enable breakpoint
    } else if (op[0] == "enable" || op[0] == "e") {
      enable(ss, op);    
      continue;
    // disable breakpoint
    } else if (op[0] == "disable" || op[0] == "d") {
      disable(ss, op);  
      continue;
    // step N
    } else if (op[0] == "step" || op[0] == "s") {
      step(ss, op);    
    // display PC-10 ~ PC+10 instructions
    } else if (op[0] == "g") {
      showPM10(); 
      continue;
    // display all instructions
    } else if (op[0] == "v") {
      showAll();   
      continue;
    // display register and instruction status
    } else if (op[0] == "f") {
      showSt();   
      continue;
    // help
    } else if (op[0] == "help" || op[0] == "h") {
      help();    
      continue;
    // exit
    } else if (op[0] == "exit") { break; }
    
    if (mCpu->isHltOn) {
      showStatus(*mCpu);
      break;
    }
  }
}
