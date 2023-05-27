.data

	prompt1:	.asciiz	"Introduza um número\n"
	prompt2:	.asciiz	"O número é par\n" 
	prompt3:	.asciiz	"O número é impar\n"

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
	andi $t1, $t0, 1	#a&1=$t1
#################################################################################	
	beq $t1, 1, else
		la $a0, prompt2
		li $v0, 4
		syscall
		j endif
	else:
		la $a0, prompt3
		li $v0, 4
		syscall
		j endif
#################################################################################
	endif: 
		li $v0, 10
		syscall	
		