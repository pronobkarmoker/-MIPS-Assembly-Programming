.data                   # ram
	num1: .word 20
	num2: .word  8
.text
	lw $s0, num1  #  s0 = 20
	lw $s1, num2
	
	sub $t0 ,$s0, $s1  # t0 =20-8
	
	li $v0, 1
	move $a0, $t0
	syscall 