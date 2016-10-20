#ifndef INCLUDED_TOOLS_H
#define INCLUDED_TOOLS_H

using namespace std;

uint32_t bin2uint32(const char* buf);
uint32_t s2uint32(const string str);
void dec2bin(string& s, int bitNum);
string i2bin(int a, int bitNum);
uint32_t bitRange(uint32_t buf, int m, int n);
void extendSign16(uint32_t& bits);

#endif
