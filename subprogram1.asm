subprogram_1: 

bgt $t1, '9', invalid
	sub $t3, $t1, '0' #get numeric digit value
	mul $t3, $t3, $t4 #mulitply by the current power of 16
	add $t2, $t2, $t3
	mul $t4, $t4, 16 #next power of 16
	j loop
