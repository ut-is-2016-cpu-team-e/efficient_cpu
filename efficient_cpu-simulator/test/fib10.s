main:
		li	$a0,	10
		jal	fib
		j	exit
		
fib:
		subi	$sp,	$sp,	8	
		sw	$a0,	4($sp)
		sw	$ra,	0($sp)

		li	$a1,	1
		blt	$a1,    $a0,    true	# if (1 < n)
		move	$v0,	$a0	    	# n <= 1
		j	return
		
true:
		subi	$a0,	$a0,	1	# n > 1
		jal	fib		# fib(n-1)
		subi	$sp,	$sp,	4	
		sw	$v0,	0($sp)		
		subi	$a0,	$a0,	1
		jal	fib		# fib(n-2)
		lw	$a10,	0($sp)		
		addi	$sp,	$sp,	4
		add	$v0,	$v0,	$a10	# fib(n-1) + fib(n-2)
		j	return
		
return:
		lw	$ra,	0($sp)		
		lw	$a0,	4($sp)
		addi	$sp,	$sp,	8
		jr	$ra
		
exit:
		hlt
