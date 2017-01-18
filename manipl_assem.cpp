#include <iostream>
#include <fstream>
#include <sstream>
#include <unordered_map>
#include <string>
#include <cassert>


using namespace std;

void removeComment(string& cmd) {
  for (unsigned i = 0; i < cmd.size(); i++) {
    if (cmd[i] == '#') {
      cmd = cmd.substr(0, i);
      break;
    }
  }
}

int main(int argc, char* argv[]){
  ifstream in(argv[1]);
  string command;
  string command2 = "";
  if(!in) {
    cerr << "can't open *.s file." << endl;
    assert(false);
  }

  unordered_map<string, string> jlabel;
  while(1){                                   //ラベルの連想配列の作成
    if (command2 == ""){
      if (!getline(in, command)) break;
    }
    else command = command2;
    command2 = "";
    removeComment(command);
    string currentl = command.substr(0, command.size() - 1);
    if (command[command.size() - 1] == ':'){
      if(!getline(in, command2)) break;
      removeComment(command2);
      if(command2[0] == ' ' && command2[1] == 'j' && command2[2] == ' '){    //ラベルの下がj命令だったら
        string nextl = command2.substr(3);
        jlabel[currentl] = nextl;
      }
      else if(command2[command2.size() - 1] == ':'){    //ラベルの下がラベルだったら
        string nextl = command2.substr(0, command2.size() - 1);
        jlabel[currentl] = nextl;
      }
    }
  }

  ifstream in2(argv[1]);
  ofstream out2;
  out2.open("temp_assembly.s", ios::trunc);
  while(getline(in2, command)){
    if(command.size() < 12){
      out2 << command << endl;
    }
    else if(command[1] == 'j' && command[2] == ' '){
      string l = command.substr(3);
      auto iter = jlabel.find(l);
      if(iter == jlabel.end()){
        out2 << command << endl;
      }
      else{
        out2 << " j " << jlabel[l] << endl;
      }
    }
   else if(command.substr(1, 3) == "bni"){
      int x = 12;
      while(command[x] != ' '){
        x++;
      }
      if(command.size() < x + 2){
        out2 << command << endl;
      }
      else{
      string l = command.substr(x+2);
      auto iter = jlabel.find(l);
      if(iter == jlabel.end()){
        out2 << command << endl;
      }
      else{
        cout << "good\n" << endl;
        out2 << command.substr(0, x) << jlabel[l] << endl;
      }
    }
    }
    else if(command.substr(1, 3) == "blt"){
      int x = 12;
      while(command[x] != ' '){
        x++;
      }
      if(command.size() < x + 2){
        out2 << command << endl;
      }
      else{
      string l = command.substr(x+2);
      auto iter = jlabel.find(l);
      if(iter == jlabel.end()){
        out2 << command << endl;
      }
      else{
        cout << "good\n" << endl;
        out2 << command.substr(0, x) << jlabel[l] << endl;
      }
    }
    }
    else if(command.substr(1, 3) == "beq"){
      int x = 12;
      while(command[x] != ' '){
        x++;
      }
      if(command.size() < x + 2){
        out2 << command << endl;
      }
      else{
      string l = command.substr(x+1);
      auto iter = jlabel.find(l);
      if(iter == jlabel.end()){
        out2 << command << endl;
      }
      else{
        cout << "good\n" << endl;
        out2 << command.substr(0, x) << jlabel[l] << endl;
      }
    }
    }
    else if(command.substr(1, 4) == "fblt"){
      int x = 13;
      while(command[x] != ' '){
        x++;
      }
      if(command.size() < x + 2){
        out2 << command << endl;
      }
      else{
      string l = command.substr(x+1);
      auto iter = jlabel.find(l);
      if(iter == jlabel.end()){
        out2 << command << endl;
      }
      else{
        cout << "good\n" << endl;
        out2 << command.substr(0, x) << jlabel[l] << endl;
      }
    }
    }
    else if(command.substr(1, 4) == "fbne"){
      int x = 14;
      if(command.size() < x + 2){
        out2 << command << endl;
      }
      else{
      while(command[x] != ' '){
        x++;
      }
      string l = command.substr(x+1);
      auto iter = jlabel.find(l);
      if(iter == jlabel.end()){
        out2 << command << endl;
      }
      else{
        cout << "good\n" << endl;
        out2 << command.substr(0, x) << jlabel[l] << endl;
      }
    }
  }
    else if(command.substr(1, 4) == "fbeq"){
      int x = 14;
      if(command.size() < x + 2){
        out2 << command << endl;
      }
      else{
      while(command[x] != ' '){
        x++;
      }
      string l = command.substr(x+1);
      auto iter = jlabel.find(l);
      if(iter == jlabel.end()){
        out2 << command << endl;
      }
      else{
        cout << "good\n" << endl;
        out2 << command.substr(0, x) << jlabel[l] << endl;
      }
    }
  }
    else if(command.substr(1, 7) == "bltfabs"){
      int x = 14;
      if(command.size() < x + 2){
        out2 << command << endl;
      }
      else{
      while(command[x] != ' '){
        x++;
      }
      string l = command.substr(x+1);
      auto iter = jlabel.find(l);
      if(iter == jlabel.end()){
        out2 << command << endl;
      }
      else{
        cout << "good\n" << endl;
        out2 << command.substr(0, x) << jlabel[l] << endl;
      }
    }
  }
    else{
      out2 << command << endl;
    }
  }
  ifstream in3("temp_assembly.s");
  ofstream out3;
  out3.open(argv[1], ios::trunc);
  while(getline(in3, command)){
    out3 << command << endl;
  }
}
