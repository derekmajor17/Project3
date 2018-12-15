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
         
     
