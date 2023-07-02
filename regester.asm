.data
	newline: .asciiz "\n"
.text
	main:
	     addi $s0,$zero,10
	     
	     jal increseMYregester
	     
	     # print a new line 
	     li $v0 , 4
	     la $a0, newline
	     syscall
	     
	     # print the value  
	     li $v0, 1
	     move $a0, $s0
	     syscall
	
	#end of program
	li $v0, 10
	syscall
	
	
	increseMYregester: 
	     addi $sp, $sp, -4
	     sw $s0, 0($sp)  # save to stack
	     
	     addi $s0,$s0 , 30
	     
	     # print 
	     li $v0, 1
	     move $a0, $s0
	     syscall
	     
	     lw $s0, 0($sp)
	     addi $sp, $sp, 4
	     
	     jr $ra
	
	
	
	# OUTPUT
	#40
	#10