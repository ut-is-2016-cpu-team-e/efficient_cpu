# <test>mul, bltfabs, flihi, flilo, bni, sl2add, fmadd
Label0:
      li  $a1  12
      li  $a2  60
      mul $a3  $a1  $a2 # mul  ($a3 <-- 12 * 60)
      li  $a5  -10

      li  $a9 16486 # 3.600000
      mtc1 $fv $a9
      mfc1 $a10 $fv
      sll	$a10 $a10 16
      ori	$a10 $a10 26214
      mtc1 $f0 $a10

      li	$a8 16384 # 2.000000
      mtc1 $fv $a8
      mfc1 $a11 $fv
      sll	$a11 $a11 16
      ori	$a11 $a11 0
      mtc1 $f1 $a11

      bltfabs  $f1  $f0  bfLabel # bltfabs  (2.0 < 3.6 ?)
      nop
      nop

Label1:
      flihi  $f2  1000  # flihi
      flilo  $f2  1000  # flilo

      bni  $a5  -10  Label2 # bni  ($a5 != -10 ?)
      nop
      bni  $a5  10  Label2
      nop

Label2:
      sl2add  $a4  $a1  $a2 # sl2add  ($a4 <-- (12 << 2) + 60) 
      fmadd  $f4  $f0  $f1  $f0 # fmadd  ($f4 <-- 3.6 * 2.0 + 3.6)
      nop
      j  exit

bfLabel:
      nop
      bltfabs  $f0  $f1  bfLabel # (3.6 < 2.0 ?)
      j  Label1
      
exit:
      hlt
