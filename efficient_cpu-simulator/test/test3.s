# <test>fmsub, flihi, flilo, flw, fsw, push, pop
test0:
# flihi test
flilo  $f0  1000  # flilo
flihi  $f0  1000  # flihi

test1:
# flihi, flilo test(unsigned)
flihi  $f1  33000
flilo  $f1  33000
j      test2

dummyTest1:
nop
push  dummyTest2
nop
pop

test2:
#flw, fsw, fmsub test
li  $a0  10
li  $a1  20
li  $a2  30
li  $a3  40
 # 3.600000
li     $a9 16486 
mtc1   $fv $a9
mfc1   $a10 $fv
sll	   $a10 $a10 16
ori	   $a10 $a10 26214
mtc1   $f2 $a10

fsw  $f2  $a0  $a1  50
flw  $f3  $a2  $a3  10

fmsub  $f4  $f2  $f2  $f3
j    test3

dummyTest2:
nop
pop
nop

test3:
#push, pop test
push  dummyTest1
nop
hlt

