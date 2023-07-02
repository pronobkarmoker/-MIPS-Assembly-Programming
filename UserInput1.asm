.data
     prompt: .asciiz "Enter your age: "
     messege: .asciiz"\n Your age is: "
.text
    # prompt the user to enter the age 
    li $v0 , 4
    la $a0 , prompt
    syscall
    
    # get the age 
    li $v0 , 5
    syscall
    
    # store the result in $t0
    move $t0 , $v0
    
    # display the messege 
    li  $v0 , 4
    la $a0, messege
    syscall
    
    #shoe the age 
    li $v0, 1
    move $a0 ,  $t0
    syscall