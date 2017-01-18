_min_caml_start: #entry_point
 sub $zero, $zero, $zero
 addi $sp, $zero, 16384
 sll $sp, $sp, 3
 subi $sp, $sp, 1024
 addi $fp, $zero, 0
 j _min_caml_start2
fib.10:
 addi $v0, $zero, 2
 blt $a0, $v0, bge_else.26
 subi $v0, $a0, 2
 sw $a0, $sp, $zero, 0
 move $a0, $v0
 sw $ra, $sp, $zero, 1
 addi $sp, $sp, 2
 push fib.10
 subi $sp, $sp, 2
 lw $ra, $sp, $zero, 1
 lw $a0, $sp, $zero, 0
 subi $a0, $a0, 1
 sw $v0, $sp, $zero, 1
 sw $ra, $sp, $zero, 3
 addi $sp, $sp, 4
 push fib.10
 subi $sp, $sp, 4
 lw $ra, $sp, $zero, 3
 lw $a0, $sp, $zero, 1
 add $v0, $a0, $v0
 pop
bge_else.26:
 move $v0, $a0
 pop
exit:
 hlt
_min_caml_start2: # main entry point
   # main program start
 addi $a0, $zero, 10
 sw $ra, $sp, $zero, 1
 addi $sp, $sp, 2
 push fib.10
 subi $sp, $sp, 2
 lw $ra, $sp, $zero, 1
 move $a0, $v0
 sw $ra, $sp, $zero, 1
 addi $sp, $sp, 2
 push min_caml_print_int
 subi $sp, $sp, 2
 lw $ra, $sp, $zero, 1
 move $a0, $v0
 j exit
   # main program end
