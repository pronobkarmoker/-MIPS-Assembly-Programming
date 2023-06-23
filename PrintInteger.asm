.data
	myInteger: .word 100   #to print word or integer

.text
	li $v0, 1
	lw $a0, myInteger
	syscall 
