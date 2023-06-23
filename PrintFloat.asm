.data
	myFloat: .float 3.1416
.text
	li $v0, 2
	lwc1 $f12, myFloat # load word in processor 1
	syscall 