#ifndef INCLUDED_DEBUGGER_H
#define INCLUDED_DEBUGGER_H

using namespace std;
class Cpu;

class Debug {
  void run(unordered_map<string, string>& option);
  void _continue();
  void _break(stringstream& ss, string* op);
  void info();
  void enable(stringstream& ss, string* op);
  void disable(stringstream& ss, string* op);
  void step(stringstream& ss, string* op);
  void showPM10();
  void showAll();
  void showSt();
  void help();
public:
  Cpu *mCpu;
  int mInstCnt;
  bool mIsReady;
  map<uint32_t, bool> mBreakPoint;
  Debug(unordered_map<string, string>& option);
  ~Debug();
  void debugLoop(unordered_map<string, string>& option);
};

#endif
