#Project2.S
.data
  #data for every word corresponding to its base unsigned decimal int
  oneN: .word 1 
  twoN: .word 2 
  threeN: .word 3
  fourN: .word 4
  fiveN: .word 5
  sixN: .word 6 
  sevenN: .word 7
  eightN: .word 8
  nineN: .word 9
  tenN: .word 10
  AN: .word 11
  BN: .word 12
  CN: .word 13
  DN: .word 14
  EN: .word 15
  FN: .word 16
  GN: .word 17
  HN: .word 18
  IN: .word 19
  JN: .word 20
  KN: .word 21
  LN: .word 22
  MN: .word 23
  NN: .word 24
  ON: .word 25
  PN: .word 26
  QN: .word 27
  zeroN: .word 0
  bad: .word 99
  line: .asciiz  "\n"
   emptyInput:   .asciiz "Input is empty.(valid)"   #Adds string to data
   invalidInput: .asciiz "Invalid base-27 number."   #Adds string to data
  longInput:    .asciiz "Input is too long(good)"   #Adds string to data

.text

.globl main
main:
     la $t7,bad

     li $v0, 12    # loads userInput in $v0
     syscall
     move $t0, $v0
     la $t6,bad
     jal validate
     #beq $t6,$t7, invalid
     
     move $t1, $t6
     li $v0, 12    # loads userInput in $v0
     syscall
     move $t0, $v0 
     la $t6,bad
     jal validate 

     move $t2, $t6
     li $v0, 12    # loads userInput in $v0
     syscall
     move $t0, $v0 
     la $t6,bad
     jal validate  

     move $t3, $t6
     li $v0, 12    # loads userInput in $v0
     syscall
     move $t0, $v0 
     la $t6,bad
     jal validate

     move $t4, $t6

     li $v0, 4
     la $a0, line
     syscall 

     beq $t1,$t7, invalid    
     beq $t2,$t7, invalid    
     beq $t3,$t7, invalid               
     beq $t4,$t7, invalid
         
     move $a0, $t1
     li $v0, 1
     syscall
     move $a0, $t2
     li $v0, 1
     syscall
     move $a0, $t3
     li $v0, 1
     syscall
     move $a0, $t4
     li $v0, 1
     syscall
     j exit 

validate:     
     addi $t5, $zero, '1'  
     beq $t0,$t5, one

     addi $t5, $zero, '2'  
     beq $t0,$t5,two       
     
     addi $t5, $zero, '3'  
     beq $t0,$t5,three  

     addi $t5, $zero, '4'  
     beq $t0,$t5,four 
     
     addi $t5, $zero, '5'  
     beq $t0,$t5,five  

     addi $t5, $zero, '6'  
     beq $t0,$t5,six 
     
     addi $t5, $zero, '7'  
     beq $t0,$t5,seven  

     addi $t5, $zero, '8'  
     beq $t0,$t5,eight 
     
     addi $t5, $zero, '9'  
     beq $t0,$t5,nine
      
      addi $t5, $zero, '0'  
     beq $t0,$t5,zero 

addi $t5, $zero, 'a'  
     beq $t0,$t5,A     
     
     addi $t5, $zero, 'b'  
     beq $t0,$t5,B 

     addi $t5, $zero, 'c'  
     beq $t0,$t5,C 
     
     addi $t5, $zero, 'd'  
     beq $t0,$t5,D  

     addi $t5, $zero, 'e'  
     beq $t0,$t5,E 
     
     addi $t5, $zero, 'f'  
     beq $t0,$t5,F  

     addi $t5, $zero, 'g'  
     beq $t0,$t5,G 
     
     addi $t5, $zero, 'h'  
     beq $t0,$t5,H

     addi $t5, $zero, 'i'  
     beq $t0,$t5,I     
     
     addi $t5, $zero, 'j'  
     beq $t0,$t5,J 

     addi $t5, $zero, 'k'  
     beq $t0,$t5,K 
     
     addi $t5, $zero, 'l'  
     beq $t0,$t5,L  

     addi $t5, $zero, 'm'  
     beq $t0,$t5,M 
     
     addi $t5, $zero, 'n'  
     beq $t0,$t5,N  

     addi $t5, $zero, 'o'  
     beq $t0,$t5,O
     
     addi $t5, $zero, 'p'  
     beq $t0,$t5,P
     
     addi $t5, $zero, 'q'  
     beq $t0,$t5,Q
