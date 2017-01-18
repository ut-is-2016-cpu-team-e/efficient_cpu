#include <cstdint>
#include <cstdlib>
#include <cctype>
#include <string>
#include "tools.h"
using namespace std;

float int322f(int32_t a) {
  union {
    int32_t i;
    float f;
  } u;
  
  u.i = a;
  return u.f;
}

uint32_t bin2uint32(const char* buf) {
  uint32_t val = 0;
  for (int i = 0; i < 32; i++) {
    switch (*buf++) {
    case '0' : val *= 2; break;
    case '1' : val = val * 2 + 1; break;
    }
  }

  return val;
}

uint32_t s2uint32(const string str) {
  return bin2uint32(str.c_str());
}

string uint322bin(uint32_t a, int bitNum) {
  string s(bitNum, '0');
  for (int i = 0; i < bitNum; i++) {
    if (1 & (a >> (bitNum - i - 1))) {
      s[i] = '1';
    }
  }
  return s;
}

string i2bin(int a, int bitNum) {
  string s(bitNum, '0');
  for (int i = 0; i < bitNum; i++) {
    if (1 & (a >> (bitNum - i - 1))) {
      s[i] = '1';
    }
  }
  return s;
}

void dec2bin(string& s, int bitNum) {
  int tmp;
  tmp = stoi(s);
  s = i2bin(tmp, bitNum);
}

// bits that range from m to n(from LSB side to MSB side)
uint32_t bitRange(uint32_t buf, int m, int n) {
  return ((buf << (31 - n)) >> (31 - n)) >> m;
}

// sign extension
void extendSign16(int32_t& bits) {
  if (bits & 0x8000) {
    bits |= 0xffff0000; 
  }
}

// digit check
bool isDigit(const string& str) {
  for (unsigned i = 0; i < str.size(); i++) {
    if (!isdigit(str[i])) {
      switch (str[i]) {
      case '.' : if (i == 0) { return false; }
                 break;

      default : return false;
      }
    }
  }
  return true;
}
