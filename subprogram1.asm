subprogram_1:
	sll $t2, $t2, 4					#Multiply by 16
	
	slti $t4, $t3, ':'				#Check if character is a number
	bne $t4, $zero, num_subprogram_1		#Take care of character being a number case
	
	slti $t4, $t3, 'G'				#Check if the character is uppercase
	bne $t4, $zero, upper_subprogram_1		#Take care of character being uppercase
	
	addi $t4, $t3, -87				#Subtract 87 from lowercase to get hexadecimal value
	add $t2, $t2, $t4				#Add translated character to running sum
	
	jr $ra							#Return to subprogram_2
	
