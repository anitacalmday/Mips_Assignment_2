.data 
  userInput: .space 9 
.text 
   main: 
   #getting user input as text
        li $v0, 8
        la $a0, userInput
        li $a1, 9
        syscall
   
   exit: 
    li $v0, 10
    syscall
   
   
   subprogram1: 
   
   subprogram2:
   
   subprogram3: 
