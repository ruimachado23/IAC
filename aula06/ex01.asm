.data	
	prompt1:	.asciiz "\n"
	li $t0, 1
	li $t1, 0
.text	
########################################################################
	and $t2, $t0, $t1
	or $t3, $t0, $t1
	nor $t4, $t0, $t1
	xor $t5, $t0, $t1
########################################################################
	la $a0, prompt1
	li $v0, 4
	syscall 	#print prompt1, mudar de linha
	
	la $a0, ($t2)
	li $v0, 1
	syscall		#print $t2
########################################################################	
	la $a0, prompt1
	li $v0, 4
	syscall 	#print prompt1, mudar de  linha
	
	la $a0, ($t3)
	li $v0, 1
	syscall		#print $t3
########################################################################	
	la $a0, prompt1
	li $v0, 4
	syscall 	#print prompt1, mudar de linha
	
	la $a0, ($t4)
	li $v0, 1
	syscall		#print $t4
########################################################################	
	la $a0, prompt1
	li $v0, 4
	syscall 	#print prompt1, mudar de linha
	
	la $a0, ($t5)
	li $v0, 1
	syscall		#print $t5
########################################################################	
	#Fim do progama
	li $v0, 10
	syscall
	
	
	
	
	