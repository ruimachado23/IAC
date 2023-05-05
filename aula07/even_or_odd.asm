.data

prompt1: .asciiz "Introduza um número\n"
result1: .asciiz "O número é par\n"
result2: .asciiz "O número é ímpar\n"

.text 
.globl main

main:	la $a0, prompt1
	li $v0, 4
	syscall 	#print prompt1
	
	li  $v0, 5	
	syscall		#read int
	
	andi $t0, $v0, 1
	
	beq $t0, 1, else
	
	do:
	la $a0, result1
	li $v0, 4
	syscall
	
	j endif
	
	else:
	la $a0, result2
	li $v0, 4
	syscall
	
	j endif
	
	endif: 
	li $v0, 10
	syscall
	
	