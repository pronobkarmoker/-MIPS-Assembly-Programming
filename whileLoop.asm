.data
     messege: .asciiz "After while loop is done "
     space: .asciiz ", "
.text
     main:
         addi $t0, $zero, 0  # i= 0
         
         while:
              bgt $t0, 10, exit  #branch if greater than
              jal printNum
              
              addi  $t0, $t0, 1  #i++
              
              j while
              
         exit:
             li $v0, 4
             la $a0, messege
             syscall
         
         #end of program
         li $v0, 10
         syscall
         
    printNum:
         li $v0, 1
         add $a0, $t0, $zero
         syscall   
         
         li $v0, 4
         la $a0, space
         syscall
           
         jr $ra    