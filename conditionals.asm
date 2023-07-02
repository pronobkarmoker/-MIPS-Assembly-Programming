.data
     messege: .asciiz"THE NUMBERS ARE EQUAL"
     messege1: .asciiz"THE NUMBERS ARE different:"
     messege2: .asciiz"NOTHING HAPPEND"
.text
     main :
         addi $t0, $zero, 20
         addi $t1, $zero, 20
         
         beq $t0, $t1 , numbersEqual  #branch if equal
         bne $t0, $t1 , numbersdifferent # branch if not equal
         
         
         # syscall to end the program
         li $v0,10
         syscall
         
         
     numbersEqual:
         li $v0, 4
         la $a0, messege
         syscall
     
    numbersdifferent: 
         li $v0, 8
         la $a0, messege1
         syscall                   