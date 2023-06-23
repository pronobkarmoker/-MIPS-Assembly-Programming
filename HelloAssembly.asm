.data
	mymessege: .asciiz "Hello Assembly\n"

.text
	li $v0, 4
	la $a0, mymessege
	syscall 