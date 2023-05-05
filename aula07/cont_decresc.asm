.data
prompt1: .asciiz "Introduza um número\n"
prompt2: .asciiz "-"

.text
.globl main

main:	la $a0, prompt1
	li $v0, 4
	syscall			#print prompt1
	
	li  $v0, 5	
	syscall			#read int
	
	li $t1, 0		#i = 0
	
	move $t0, $v0
	
	for:
	bge $t1, $t0, endfor	
	
	addi $t1, $t1, 1	#i += 1 
	
	la $a0, prompt2	
	li $v0,4
	syscall			#print prompt2
	
	j for

	endfor:
	li $v0, 10
	syscall
	
	
	
	
	
	
	
	
	
	
	
  