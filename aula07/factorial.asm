.data
prompt1: .asciiz "Introduza um número\n"
prompt2: .asciiz "O fatorial do número inserido é: "

.text
.globl main

main:	la $a0, prompt1
	li $v0, 4
	syscall			#print prompt1
	
	li  $v0, 5	
	syscall			#read int
	
	move $t1, $v0
	
	li $t2, 1		#f = 1
	
	for: 
	ble $t1, 0, endfor
	
	mult $t2, $t1
	
	mflo $t2
	
	subi $t1, $t1, 1	#i -= 1 
	
	j for
	
	endfor:
	la $a0, prompt2
	li $v0, 4
	syscall			#print prompt2
	
	move $a0, $t2
	li $v0, 1
	syscall			#print result
	
	
	 