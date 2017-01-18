main:
		li	$a0,	10
		jal	fib
		j	exit
		
fib:
		subi	$sp	$sp	8	
        sw	$a0	$zero   $sp  4
		sw	$ra $zero	$sp  0

		li	$a1,	1
		blt	$a1,    $a0,    true	# if (1 < n)
		move	$v0,	$a0	    	# n <= 1
		j	return
		
true:
		subi	$a0,	$a0,	1	# n > 1
		jal	fib		# fib(n-1)
		subi	$sp,	$sp,	4	
		sw	$v0 $sp	$zero 0	
		subi	$a0,	$a0,	1
		jal	fib		# fib(n-2)
		lw	$a10  $zero	$sp	0
		addi	$sp,	$sp,	4
		add	$v0,	$v0,	$a10	# fib(n-1) + fib(n-2)
		j	return
		
return:
		lw	$ra	 $zero $sp 0		
		lw	$a0	$sp $zero 4
		addi	$sp,	$sp,	8
		jr	$ra
		
exit:
		hlt
