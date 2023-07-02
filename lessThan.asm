.data
     messege: .asciiz"The number is less than the other"
.text
    main:
     addi $t0, $zero, 4
     addi $t0, $zero, 200
     
     slt $s0, $t0, $t1
     bne $s0, $zero, printMsg
     
     # end of program
     li $v0,10
     syscall
     
     printMsg:
     li $v0 ,4
     la $a0, messege
     syscall