# lab7.asm
# Puth Vang
# CSC35 Section 15
#
# 1. Assemble  : as -o lab7.o lab7.asm
# 2. Link      : ld -o lab7.out lab7.o csc35.o
# 3. Execute   : ./a.out

.intel_syntax noprefix
.data

NewLine:
  .ascii "\n\0"

Welcome:
  .ascii "Welcome to The Gold Bug Saloon!\n\0"

Steaks:
  .ascii "1. Fresh elk steaks (302 cents)\n\0"

OldSteaks:
  .ascii "2. Not-so-fresh elk steaks (125 cents)\n\0"

ChickenSandwiches:
  .ascii "3. Chicken sandwiches (200 cents)\n\0"

MilkAndMushBowls:
  .ascii "4. Milk and mush bowls (75 cents)\n\0"

BigoBarrelOfBeer:
  .ascii "5. Big-o-barrel-of-beer (550 cents)\n\0"

OrderPrompt:
  .ascii "What is your order?\n\0"

Enjoyed:
  .ascii "Your party enjoyed:\n\0"

SplitPrompt:
  .ascii "How many people are splitting the bill?\n\0"

GiveMoney:
  .ascii "Okay, everyone, give \0"

GiveMoney2:
  .ascii " cents each.\n\0"

Items:
  .quad Steaks
  .quad OldSteaks
  .quad ChickenSandwiches
  .quad MilkAndMushBowls
  .quad BigoBarrelOfBeer


Prices:
  .quad 302
  .quad 125
  .quad 200
  .quad 75
  .quad 550

.text
.global _start

_start:
  
  lea rcx, Welcome
  call PrintStringZ

  mov rdi, 0

While:

  mov rcx, [Items + rdi * 8]
  call PrintStringZ

  add rdi, 1

  cmpq rdi, 5
  jge Order

  jmp While

Order:
  lea rcx, NewLine
  call PrintStringZ

  lea rcx, OrderPrompt
  call PrintStringZ

  call ScanInt
  mov rax, rcx

  lea rcx, NewLine
  call PrintStringZ

  sub rax, 1

  mov rbx, [Prices + rax * 8] # Price

  lea rcx, Enjoyed
  call PrintStringZ

  mov rcx, [Items + rax * 8] # Item in RCX
  call PrintStringZ

  lea rcx, NewLine
  call PrintStringZ

  lea rcx, SplitPrompt
  call PrintStringZ

  call ScanInt
  mov rax, rbx
  cqo
  idiv rcx

  lea rcx, NewLine
  call PrintStringZ

  lea rcx, GiveMoney
  call PrintStringZ

  mov rcx, rax
  call PrintInt

  lea rcx, GiveMoney2
  call PrintStringZ

End:
  call Exit

