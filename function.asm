.data
     messege: .asciiz"Hi there \nI am pronob karmoker shuvo \n "
.text
     main:
         jal displayMessage  # call the function 
         
         addi $s0, $zero,5
         
         # print 5 in the screen
         li $v0, 1
         move $a0, $s0
         syscall 
     
     # tell the system that the program is done .. (must do)
     li $v0, 10
     syscall
     
     displayMessage:
         li $v0,4
         la $a0, messege
         syscall
         
         jr $ra 