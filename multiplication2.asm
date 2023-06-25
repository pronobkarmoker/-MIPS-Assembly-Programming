.data
	
.text
     addi $t0, $zero,  2000
     addi $t1, $zero, 2
     
     mult $t0, $t1
   
     mflo $s0   # move from low ( nicher regester e gun ta thake)
     
     li $v0, 1
     move $a0, $s0
     syscall