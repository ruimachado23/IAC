.data

	prompt1: .asciiz "Introduza um número\n"
	prompt2: .asciiz "-"
	lw $t1, 0

.text
#################################################################################
	la $a0, prompt1
	li $v0, 4		#print prompt1
	syscall 
#################################################################################
	li $v0, 5
	syscall			#read int - pass to $t0
	move  $t0, $v0
#################################################################################
	for:
	bge $t1, $t0, endfor
		la $a0, prompt2
		li $v0, 4		#print prompt2
		syscall 
		
		addi $t1, $t1, 1
		
		j for
		
	endfor:
		li $v0, 10
		syscall
		
	