#ifndef INCLUDED_TOOLS_H
#define INCLUDED_TOOLS_H

#include <unordered_map>
using namespace std;

float int322f(int32_t a);
uint32_t bin2uint32(const char* buf);
uint32_t s2uint32(const string str);
void dec2bin(string& s, int bitNum);
string uint322bin(uint32_t a, int bitNum);
string i2bin(int a, int bitNum);
uint32_t bitRange(uint32_t buf, int m, int n);
void extendSign16(int32_t& bits);
int checkOpt(int argc, char* argv[], unordered_map<string, string>& option);

#endif
