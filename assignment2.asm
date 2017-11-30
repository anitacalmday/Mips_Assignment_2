.data
 invalid_num_msg: .asciiz "Nan" 
 invalid_len_msg: .asciiz "Large String" 
 comma: .asciiz ","
 userInput: .space 1001
 newString: .space 1001 
 
.globl main
.text
	main: 
	   li $v0, 8                          #read in string 
	   la $a0, userInput		      #store string 	
	   syscall 
	   
	   la $s1, newString		      #Save address of curr_str in $s1
	   la $s2, ($a0)		      #Move address of input string to $s2	
	   la $s3, newString 		      #Copy of new string to where you are pringing from 			
	   and $t8, $t8, $zero
	   and $t9, $t9, $zero
