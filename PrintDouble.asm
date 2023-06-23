.data
	double:     .double 45.0025
	Zerodouble: .double 0.00
.text
	ldc1 $f2,  double
	ldc1 $f0, Zerodouble
	
	li $v0, 3
	add.d $f12, $f2, $f0
	syscall 
