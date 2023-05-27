	#$t0 = n
	#$t1 = f

.data
	
	prompt1:	.asciiz "Introduza um número\n"
	prompt2:	.asciiz "O fatorial do numero inserido é: "

.text
#################################################################################
	la $a0, prompt1
	li $v0, 4		#print prompt1
	syscall 
#################################################################################
	li $v0, 5
	syscall			#read int - pass to $t0 - n=$t0
	move  $t0, $v0
	
	li $t2, 1		#f = 1
#################################################################################
	for:
		ble $t0, 0, endfor
			mult $t1, $t0
			mflo $t1
			subi $t0,$t0,1
		
		j for
	endfor:
		la $a0, prompt2
		li $v0, 4		#print prompt2
		syscall 
		
		move $a0, $t1
		li $v0, 1		#print result
		syscall
		
	li $v0, 10
	syscall
		
		
	