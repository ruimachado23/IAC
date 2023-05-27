.data

	prompt1:	.asciiz "Insira 5 números\n"
	prompt2: 	.asciiz "A soma é: "

.text

	la $a0, prompt1
	li $v0, 4
	syscall
	
	li $v0, 5 
	syscall
	move $t0, $v0
	
	li $v0, 5 
	syscall
	move $t1, $v0
	
	li $v0, 5 
	syscall
	move $t2, $v0
	
	li $v0, 5 
	syscall
	move $t3, $v0
	
	li $v0, 5 
	syscall
	move $t4, $v0
	
	add $t5, $t0, $t1
	add $t6, $t5, $t2
	add $t7, $t6, $t3
	add $t8, $t7, $t4
	
	la $a0, prompt2
	li $v0, 4
	syscall
	
	la $a0, ($t8)
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall