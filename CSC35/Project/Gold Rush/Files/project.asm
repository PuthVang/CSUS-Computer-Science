# project.asm
# Puth Vang
# CSC35 Section 12
# 
# characters.o and weapons.o are required otherwise the file gets more messy.
# 
# 
# 1. Assemble : as -o project.o project.asm
# 2. Link     : ld -o project.out project.o csc35.o characters.o weapons.o
# 3. Execute  : ./project.out

.intel_syntax noprefix
.data

WelcomeAscii:
  .ascii "██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗\n"
  .ascii "██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝\n"
  .ascii "██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗  \n"
  .ascii "██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝  \n"
  .ascii "╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗\n"
  .ascii " ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝\n"
  .ascii "\n"
  .ascii "              to a Genshin Impact Wish Simulator\n"
  .ascii "\n"
  .ascii "In this simulation, there are 44 characters and 96 weapons.\n"
  .ascii "\n\0"

GoodbyeAscii:
  .ascii " ██████╗  ██████╗  ██████╗ ██████╗ ██████╗ ██╗   ██╗███████╗██╗\n"
  .ascii "██╔════╝ ██╔═══██╗██╔═══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝██╔════╝██║\n"
  .ascii "██║  ███╗██║   ██║██║   ██║██║  ██║██████╔╝ ╚████╔╝ █████╗  ██║\n"
  .ascii "██║   ██║██║   ██║██║   ██║██║  ██║██╔══██╗  ╚██╔╝  ██╔══╝  ╚═╝\n"
  .ascii "╚██████╔╝╚██████╔╝╚██████╔╝██████╔╝██████╔╝   ██║   ███████╗██╗\n"
  .ascii " ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝\n\0"

LuckyAscii:
  .ascii "\n"
  .ascii "██╗     ██╗   ██╗ ██████╗██╗  ██╗██╗   ██╗    ██╗   ██╗ ██████╗ ██╗   ██╗██╗\n"
  .ascii "██║     ██║   ██║██╔════╝██║ ██╔╝╚██╗ ██╔╝    ╚██╗ ██╔╝██╔═══██╗██║   ██║██║\n"
  .ascii "██║     ██║   ██║██║     █████╔╝  ╚████╔╝      ╚████╔╝ ██║   ██║██║   ██║██║\n"
  .ascii "██║     ██║   ██║██║     ██╔═██╗   ╚██╔╝        ╚██╔╝  ██║   ██║██║   ██║╚═╝\n"
  .ascii "███████╗╚██████╔╝╚██████╗██║  ██╗   ██║          ██║   ╚██████╔╝╚██████╔╝██╗\n"
  .ascii "╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝   ╚═╝          ╚═╝    ╚═════╝  ╚═════╝ ╚═╝\n\0"

Rules:
  .ascii "Rules: \n"
  .ascii "1. You have 20 weeks (5 months) to collect as much characters or weapons as you can.\n"
  .ascii "2. The capacity of your wallet drops 10 to 30% each week, if it hits 0% then the game ends automatically.\n"
  .ascii "3. Going to work will get your wallet capacity up by 50 to 75% but it'll cost you 25 to 100 primogems.\n"
  .ascii "4. Going to a new nation will cost you a week and may have a 10% chance to double the primogems left in said nation.\n" 
  .ascii "5. Characters and weapons cost 16 primogems each and they have a 10% chance to get another free character or weapon.\n"
  .ascii "6. Not inputting a number will automatically make you go explore for primogems, meaning you can lose in 5 weeks if you aren't careful.\n\0"

FirstLuckyEvent:
  .ascii "You have hit a gold pot! The amount of primogems left in your area has been doubled from \0"

FirstLuckyEvent2:
  .ascii " to \0"

SecondLuckyEvent:
  .ascii "You have hit a jack pot! You can roll for another character!\0"

ThirdLuckyEvent:
  .ascii "You have hit a jack pot! You can roll for another weapon!\0"

#-------------------------------------------------#

# This is the week counter

WeekMessage:
  .ascii "Week \0"

WeekCounter:
  .quad 0






#-------------------------------------------------#

# These are utilities

NewLine:
  .ascii "\n\0"

Sunday:
  .ascii "It's Sunday!\n\0"






#-------------------------------------------------#

# These are the primogems stuff

PrimogemsMessage:
  .ascii "You have \0"

PrimogemsMessage2:
  .ascii " Primogem\n\0"

PrimogemsAmount:
  .quad 100






PrimogemsLost:
  .ascii "You lost \0"

PrimogemsLost2:
  .ascii " primogems from working\n\0"

PrimogemsLostAmount:
  .quad 0






PrimogemsGained:
  .ascii "You went to explore and gained \0"

PrimogemsGained2:
  .ascii " primogems\n\0"

PrimogemsGainedAmount:
  .quad 0






#-------------------------------------------------#

# These are the wallet stuff






WalletMessage:
  .ascii "Your wallet is at \0"

WalletMessage2:
  .ascii "%\n\0"
  
WalletAmount:
  .quad 100






WalletGain:
  .ascii "Your wallet's capacity went up by \0"

WalletGain2:
  .ascii "% from you working\n\n\0"
  
WalletGainAmount:
  .quad 0






WalletLost:
  .ascii "Your wallet's capaity went down by \0"

WalletLost2:
  .ascii "% from you exploring\n\0"
  
WalletLostAmount:
  .quad 0






WalletBelowZero:
  .ascii "Game over! It looks like the capacity of your wallet went below 0%!\0"







#-------------------------------------------------#

# These are the list of options you can do

SelectOption:
  .quad 0

Options:
  .ascii "1. Explore\n"
  .ascii "2. Go work\n"
  .ascii "3. Go to a new region.\n"
  .ascii "4. Pull for a character. (16 primogems)\n"
  .ascii "5. Pull 10x for a character. (160 primogems)\n"
  .ascii "6. Pull for a weapon. (16 primogems)\n"
  .ascii "7. Pull 10x for a weapon. (160 primogems)\n\0"






#-------------------------------------------------#

# These are the regions you can go to

Mondstadt:
  .ascii "Mondstadt\0"  

Liyue:
  .ascii "Liyue\0"

Inazuma:
  .ascii "Inazuma\0"

Sumeru:
  .ascii "Sumeru\0"

Fontaine:
  .ascii "Fontaine\0"

Natlan:
  .ascii "Natlan\0"
  
Snezhnaya: 
  .ascii "Snezhnaya\0"
  
Leaving:
  .ascii "You left your old nation for \0"

Leaving2:
  .ascii " and left behind \0" 

Leaving3:
  .ascii " primogems \n\0" 

PrimogemsLeft:
  .quad 0






#-------------------------------------------------#

# This is the character stuff, they are stored in characters.asm to reduce line count

ObtainingCharacter:
  .ascii "You rolled in the character banner and got the character(s): \0"

ObtainingCharacter2:
  .ascii ".\n\0"

CharacterAmount:
  .quad 0






#-------------------------------------------------#

# This is the weapon stuff, they are stored in weapons.asm to reduce line count

ObtainingWeapon:
  .ascii "You rolled in the weapon banner and got the weapon(s): \0"

ObtainingWeapon2:
  .ascii ".\n\0"

WeaponAmount:
  .quad 0






#-------------------------------------------------#

# This is the final statistic stuff.

EqualsTwenty1:
  .ascii "By the end of the adventure, you collected... \n\0"

EqualsTwenty2:
  .ascii " primogems\n\0"

EqualsTwenty3:
  .ascii "% wallet capacity\n\0"

EqualsTwenty4:
  .ascii " characters\n\0"

EqualsTwenty5:
  .ascii " weapons\n\0"






#-------------------------------------------------#
.text
.global _start
_start:

  lea rcx, WelcomeAscii
  call PrintStringZ

  mov rcx, 3
  call SetForeColor

  lea rcx, Rules
  call PrintStringZ

  mov rcx, 7
  call SetForeColor

  # This generates a random amount of primogems from 0 and 1000

  mov rcx, 1001
  call Random
  
  mov PrimogemsLeft, rcx
  
While:
  
  # This checks if the week counter is equal to 20, if so, end the game the next turn

  cmpq WeekCounter, 21
  je EqualsTwenty

  # This checks if their wallet capacity is below 0, if so, end the game immediately

  cmpq WalletAmount, 0
  jle BelowZero

  # This displays the week counter along with the Sunday message

  lea rcx, NewLine
  call PrintStringZ

  mov rcx, 3
  call SetForeColor
  
  lea rcx, WeekMessage
  call PrintStringZ
  
  mov rcx, WeekCounter
  call PrintInt
  
  mov rcx, 7
  call SetForeColor
    
  lea rcx, NewLine
  call PrintStringZ

  mov rcx, WeekCounter
  add rcx, 1
  mov WeekCounter, rcx

  lea rcx, Sunday
  call PrintStringZ

  #-------------------------------------------------#

  # This displays the primogems message
  
  lea rcx, PrimogemsMessage
  call PrintStringZ
  
  mov rcx, 6
  call SetForeColor
  
  mov rcx, PrimogemsAmount
  call PrintInt

  mov rcx, 7
  call SetForeColor
  
  lea rcx, PrimogemsMessage2
  call PrintStringZ

  #-------------------------------------------------#

  # This displays the wallet message
  
  lea rcx, WalletMessage
  call PrintStringZ
  
  mov rcx, 2
  call SetForeColor
  
  mov rcx, WalletAmount
  call PrintInt

  mov rcx, 7
  call SetForeColor
  
  lea rcx, WalletMessage2
  call PrintStringZ

  #-------------------------------------------------#

  # This displays the options message and then chooses the options
  # If nothing is chosen, it'll default to Option One. 

  lea rcx, Options
  call PrintStringZ
  
  call ScanInt
  
  cmpq rcx, 1
  je OptionOne
  cmpq rcx, 2
  je OptionTwo
  cmpq rcx, 3
  je OptionThree
  cmpq rcx, 4
  je OptionFour
  cmpq rcx, 5
  je OptionFourMulti
  cmpq rcx, 6
  je OptionFive
  cmpq rcx, 7
  je OptionFiveMulti
      
###################################################






OptionOne:

  lea rcx, NewLine
  call PrintStringZ

  # This prevents an infinite loop later on

  mov rdx, 8

  # This adds a random amount between 0 and max amount of primogems left to their primogems

  mov rcx, PrimogemsLeft
  call Random
  mov PrimogemsGainedAmount, rcx
  add PrimogemsAmount, rcx
  sub PrimogemsLeft, rcx

  # Prints primogems

  lea rcx, PrimogemsGained
  call PrintStringZ

  mov rcx, 6
  call SetForeColor

  mov rcx, PrimogemsGainedAmount
  call PrintInt

  mov rcx, 7
  call SetForeColor

  lea rcx, PrimogemsGained2
  call PrintStringZ

  jmp RemoveWallet

###################################################






RemoveWallet:

  # This will remove the wallet capacity when they can't go explore
  # This generates a random amount of capacity between 10 and 30 to remove it from their wallet

  mov rcx, 20
  call Random
  add rcx, 10

  mov WalletLostAmount, rcx
  sub WalletAmount, rcx

  # Prints wallet message
  
  lea rcx, WalletLost
  call PrintStringZ

  mov rcx, 2
  call SetForeColor

  mov rcx, WalletLostAmount
  call PrintInt

  mov rcx, 7
  call SetForeColor

  lea rcx, WalletLost2
  call PrintStringZ

  jmp While

###################################################






OptionTwo:

  lea rcx, NewLine
  call PrintStringZ
  
  # This removes a random amount between 20 and 100 from their primogems

  mov rcx, 80
  call Random
  add rcx, 20
  mov PrimogemsLostAmount, rcx
  sub PrimogemsAmount, rcx

  # Prints primogems

  lea rcx, PrimogemsLost
  call PrintStringZ

  mov rcx, 6
  call SetForeColor

  mov rcx, PrimogemsLostAmount
  call PrintInt

  mov rcx, 7
  call SetForeColor

  lea rcx, PrimogemsLost2
  call PrintStringZ

  #-------------------------------------------------#

  # This generates a random amount of capacity between 50 and 75 to add it to their wallet

  mov rcx, 50
  call Random
  add rcx, 25

  mov WalletGainAmount, rcx
  add WalletAmount, rcx

  # Prints wallet message

  lea rcx, WalletGain
  call PrintStringZ

  mov rcx, 2
  call SetForeColor

  mov rcx, WalletGainAmount
  call PrintInt

  mov rcx, 7
  call SetForeColor

  lea rcx, WalletGain2
  call PrintStringZ

  # They mine afterwards

  mov rdx, 9

  jmp OptionOne

###################################################






OptionThree:

  lea rcx, NewLine
  call PrintStringZ

  # This generates a random number between 1 and 6 and then display the leaving message
  
  mov rcx, 6
  call Random
  add rcx, 1
    
  mov rax, rcx

  lea rcx, Leaving
  call PrintStringZ

  cmpq rax, 1
  je MondstadtNation
  cmpq rax, 2
  je LiyueNation
  cmpq rax, 3
  je InazumaNation
  cmpq rax, 4
  je SumeruNation
  cmpq rax, 5
  je FontaineNation
  cmpq rax, 6
  je NatlanNation
  cmpq rax, 7
  je SnezhnayaNation

###################################################






  # This is how the nations are selected because we can't seem to manipulate String labels (04/07/2022)

MondstadtNation:
  lea rcx, Mondstadt 
  jmp OptionThreeAfter

LiyueNation:
  lea rcx, Liyue
  jmp OptionThreeAfter

InazumaNation:
  lea rcx, Inazuma
  jmp OptionThreeAfter

SumeruNation:
  lea rcx, Sumeru
  jmp OptionThreeAfter

FontaineNation:
  lea rcx, Fontaine
  jmp OptionThreeAfter

NatlanNation:
  lea rcx, Natlan
  jmp OptionThreeAfter

SnezhnayaNation:
  lea rcx, Snezhnaya
  jmp OptionThreeAfter

###################################################






OptionThreeAfter:

  

  # This prints the nation and then leave message afterwards. 
  # It also generates a random amount of primogems from 0 to 1000

  call PrintStringZ
  
  lea rcx, Leaving2
  call PrintStringZ
  
  mov rcx, 6
  call SetForeColor

  mov rcx, PrimogemsLeft
  call PrintInt

  mov rcx, 7
  call SetForeColor
  
  lea rcx, Leaving3
  call PrintStringZ
  
  mov rcx, 1001
  call Random
  
  mov PrimogemsLeft, rcx

  mov rcx, 10
  call Random

  # 1/10 chance of happening to trigger the first random event

  cmpq rcx, 9
  je FirstRandomEvent

  # Otherwise they go back into the while loop
  
  mov rdx, 0

  jmp RemoveWallet

###################################################






FirstRandomEvent:

  # This will print the LUCKY YOU! Ascii art
  # After that, it'll double the amount of primogems they can find

  mov rcx, 3
  call SetForeColor

  lea rcx, LuckyAscii
  call PrintStringZ

  mov rax, PrimogemsLeft
  mov rbx, 2
  IMUL rbx

  lea rcx, FirstLuckyEvent
  call PrintStringZ

  mov rcx, 6
  call SetForeColor

  mov rcx, PrimogemsLeft
  call PrintInt

  mov rcx, 7
  call SetForeColor

  mov rcx, 3
  call SetForeColor

  lea rcx, FirstLuckyEvent2
  call PrintStringZ

  mov rcx, 6
  call SetForeColor

  mov rcx, rax
  call PrintInt

  mov rcx, 7
  call SetForeColor

  mov PrimogemsLeft, rax

  lea rcx, NewLine
  call PrintStringZ

  jmp While  

###################################################






  # This makes them pull the character banner 10 times

OptionFourMulti:

  mov rbx, 10

  jmp OptionFour

OptionFour:

  # This makes it so they can pull 10 times until it hit 0 on rbx

  sub rbx, 1

  # This makes it cost 16 primogems to use the character banner 
  
  mov rcx, PrimogemsAmount
  sub rcx, 16
  mov PrimogemsAmount, rcx

  # This generates a random number between 1 and 43 for the characters
  
  mov rcx, 42
  call Random
  add rcx, 1
  
  mov rax, rcx

  lea rcx, NewLine
  call PrintStringZ

  lea rcx, ObtainingCharacter
  call PrintStringZ

  # This compares and selects one of the 43 characters

  cmpq rax, 1
  je AlbedoCharacter
  
  cmpq rax, 2
  je AloyCharacter
  
  cmpq rax, 3
  je AmberCharacter
  
  cmpq rax, 4
  je Arataki_IttoCharacter
  
  cmpq rax, 5
  je BarbaraCharacter
  
  cmpq rax, 6
  je BeidouCharacter
  
  cmpq rax, 7
  je BennettCharacter
  
  cmpq rax, 8
  je ChongyunCharacter
  
  cmpq rax, 9
  je DilucCharacter
  
  cmpq rax, 10
  je DionaCharacter
  
  cmpq rax, 11
  je EulaCharacter
  
  cmpq rax, 12
  je FischlCharacter
  
  cmpq rax, 13
  je GanyuCharacter
  
  cmpq rax, 14
  je Hu_TaoCharacter
  
  cmpq rax, 15
  je JeanCharacter
  
  cmpq rax, 16
  je Kaedehara_KazuhaCharacter
  
  cmpq rax, 17
  je KaeyaCharacter
  
  cmpq rax, 18
  je Kamisato_AyakaCharacter
  
  cmpq rax, 19
  je KeqingCharacter
  
  cmpq rax, 20
  je KleeCharacter
  
  cmpq rax, 21
  je Kujou_SaraCharacter
  
  cmpq rax, 22
  je LisaCharacter
  
  cmpq rax, 23
  je MonaCharacter
  
  cmpq rax, 24
  je NingguangCharacter
  
  cmpq rax, 25
  je NoelleCharacter
  
  cmpq rax, 26
  je QiqiCharacter
  
  cmpq rax, 27
  je Raiden_ShogunCharacter
  
  cmpq rax, 28
  je RazorCharacter
  
  cmpq rax, 29
  je RosariaCharacter
  
  cmpq rax, 30
  je Sangonomiya_KokomiCharacter
  
  cmpq rax, 31
  je SayuCharacter
  
  cmpq rax, 32
  je SucroseCharacter
  
  cmpq rax, 33
  je TartagliaCharacter
  
  cmpq rax, 34
  je ThomaCharacter
  
  cmpq rax, 35
  je TravelerCharacter
  
  cmpq rax, 36
  je VentiCharacter
  
  cmpq rax, 37
  je XianglingCharacter
  
  cmpq rax, 38
  je XiaoCharacter
  
  cmpq rax, 39
  je XingqiuCharacter
  
  cmpq rax, 40
  je XinyanCharacter
  
  cmpq rax, 41
  je YanfeiCharacter
  
  cmpq rax, 42
  je YoimiyaCharacter
  
  cmpq rax, 43
  je ZhongliCharacter

###################################################






OptionFourAfter:

  # This prints that the player obtained the character to the screen 
  
  call PrintStringZ
  
  mov rcx, 7
  call SetForeColor
  
  lea rcx, ObtainingCharacter2
  call PrintStringZ

  mov rcx, CharacterAmount
  add rcx, 1
  mov CharacterAmount, rcx

  # 1/10 chance of happening to trigger the second random event

  mov rcx, 10
  call Random

  cmpq rcx, 9
  je SecondRandomEvent

  # This makes them pull again if they have more than 1 try otherwise they go back into the while loop

  cmpq rbx, 1
  jge OptionFour
  
  jmp While
  
###################################################






  # This is the second random event
  # It has a 1/10 chance of happening
  # When it triggers, the user can pull once more for free

SecondRandomEvent:

  # This effectively makes it free by adding back the 16 primogems.

  mov rcx, PrimogemsAmount
  add rcx, 16
  mov PrimogemsAmount, rcx

  mov rcx, 3
  call SetForeColor

  lea rcx, LuckyAscii
  call PrintStringZ

  lea rcx, SecondLuckyEvent
  call PrintStringZ

  mov rcx, 7
  call SetForeColor

  lea rcx, NewLine
  call PrintStringZ

  jmp OptionFour

###################################################





  # This makes them pull the character banner 10 times

OptionFiveMulti:

  mov rbx, 10

  jmp OptionFive

OptionFive:

  # This makes it so they can pull 10 times until it hit 0 on rbx
  
  sub rbx, 1

  # This makes it cost 16 primogems to use the weapon banner 

  mov rcx, PrimogemsAmount
  sub rcx, 16
  mov PrimogemsAmount, rcx

  # This generates a random number between 0 and 95 for the weapons
  
  mov rcx, 95
  call Random
  
  mov rax, rcx

  lea rcx, NewLine
  call PrintStringZ

  lea rcx, ObtainingWeapon
  call PrintStringZ

  # This compares and selects one of the 95 weapons

  cmpq rax, 0
  je Blackcliff_LongswordWeapon

  cmpq rax, 1
  je Cool_SteelWeapon

  cmpq rax, 2
  je Dark_Iron_SwordWeapon

  cmpq rax, 3
  je Dull_SwordWeapon

  cmpq rax, 4
  je Favonius_SwordWeapon

  cmpq rax, 5
  je Festering_DesireWeapon

  cmpq rax, 6
  je Fillet_BladeWeapon

  cmpq rax, 7
  je Harbinger_of_DawnWeapon

  cmpq rax, 8
  je Iron_StingWeapon

  cmpq rax, 9
  je Lions_RoarWeapon

  cmpq rax, 10
  je Mistsplitter_ReforgedWeapon

  cmpq rax, 11
  je Prototype_RancourWeapon

  cmpq rax, 12
  je Royal_LongswordWeapon

  cmpq rax, 13
  je Sacrificial_SwordWeapon

  cmpq rax, 14
  je Silver_SwordWeapon

  cmpq rax, 15
  je Skyrider_SwordWeapon

  cmpq rax, 16
  je Skyward_BladeWeapon

  cmpq rax, 17
  je Summit_ShaperWeapon

  cmpq rax, 18
  je Sword_of_DescensionWeapon

  cmpq rax, 19
  je The_Alley_FlashWeapon

  cmpq rax, 20
  je The_Black_SwordWeapon

  cmpq rax, 21
  je The_FluteWeapon

  cmpq rax, 22
  je Travelers_Handy_SwordWeapon

  cmpq rax, 23
  je Alley_HunterWeapon

  cmpq rax, 24
  je Amos_BowWeapon

  cmpq rax, 25
  je Blackcliff_WarbowWeapon

  cmpq rax, 26
  je Compound_BowWeapon

  cmpq rax, 27
  je Ebony_BowWeapon

  cmpq rax, 28
  je Elegy_f__the_EndWeapon

  cmpq rax, 29
  je Favonius_WarbowWeapon

  cmpq rax, 30
  je HamayumiWeapon

  cmpq rax, 31
  je Hunters_BowWeapon

  cmpq rax, 32
  je MessengerWeapon

  cmpq rax, 33
  je Mitternachts_WaltzWeapon

  cmpq rax, 34
  je Mouuns_MoonWeapon

  cmpq rax, 35
  je Polar_StarWeapon

  cmpq rax, 36
  je PredatorWeapon

  cmpq rax, 37
  je Prototype_CrescentWeapon

  cmpq rax, 38
  je Raven_BowWeapon

  cmpq rax, 39
  je Recurve_BowWeapon

  cmpq rax, 40
  je Royal_BowWeapon

  cmpq rax, 41
  je RustWeapon

  cmpq rax, 42
  je Sacrificial_BowWeapon

  cmpq rax, 43
  je Seasoned_Hunters_BowWeapon

  cmpq rax, 44
  je Sharpshooters_OathWeapon

  cmpq rax, 45
  je Skyward_HarpWeapon

  cmpq rax, 46
  je SlingshotWeapon

  cmpq rax, 47
  je The_Viridescent_HuntWeapon

  cmpq rax, 48
  je Amber_CatalystWeapon

  cmpq rax, 49
  je Apprentices_NotesWeapon

  cmpq rax, 50
  je Blackcliff_AgateWeapon

  cmpq rax, 51
  je Dodoco_TalesWeapon

  cmpq rax, 52
  je Emerald_OrbWeapon

  cmpq rax, 53
  je Everlasting_MoonglowWeapon

  cmpq rax, 54
  je Eye_of_PerceptionWeapon

  cmpq rax, 55
  je Favonius_CodexWeapon

  cmpq rax, 56
  je FrostbearerWeapon

  cmpq rax, 57
  je Hakushin_RingWeapon

  cmpq rax, 58
  je Lost_Prayer_to_the_Sacred_WindsWeapon

  cmpq rax, 59
  je Magic_GuideWeapon

  cmpq rax, 60
  je Mappa_MareWeapon

  cmpq rax, 61
  je Memory_of_DustWeapon

  cmpq rax, 62
  je Otherworldly_StoryWeapon

  cmpq rax, 63
  je Pocket_GrimoireWeapon

  cmpq rax, 64
  je Prototype_AmberWeapon

  cmpq rax, 65
  je Prototype_MaliceWeapon

  cmpq rax, 66
  je Royal_GrimoireWeapon

  cmpq rax, 67
  je Sacrificial_FragmentsWeapon

  cmpq rax, 68
  je Skyward_AtlasWeapon

  cmpq rax, 69
  je Solar_PearlWeapon

  cmpq rax, 70
  je Thrilling_Tales_of_Dragon_SlayersWeapon

  cmpq rax, 71
  je Twin_NephriteWeapon

  cmpq rax, 72
  je Wine_and_SongWeapon

  cmpq rax, 73
  je Beginners_ProtectorWeapon

  cmpq rax, 74
  je Black_TasselWeapon

  cmpq rax, 75
  je Blackcliff_PoleWeapon

  cmpq rax, 76
  je Crescent_PikeWeapon

  cmpq rax, 77
  je Dragons_BaneWeapon

  cmpq rax, 78
  je Dragonspine_SpearWeapon

  cmpq rax, 79
  je Engulfing_LightningWeapon

  cmpq rax, 80
  je Favonius_LanceWeapon

  cmpq rax, 81
  je HalberdWeapon

  cmpq rax, 82
  je Iron_PointWeapon

  cmpq rax, 83
  je Kitain_Cross_SpearWeapon

  cmpq rax, 84
  je Kunwus_Iris_RiftWeapon

  cmpq rax, 85
  je Lithic_SpearWeapon

  cmpq rax, 86
  je Primordial_Ja__Winged_SpearWeapon

  cmpq rax, 87
  je Prototype_GrudgeWeapon

  cmpq rax, 88
  je Prototype_StarglitterWeapon

  cmpq rax, 89
  je Royal_SpearWeapon

  cmpq rax, 90
  je Skyward_SpineWeapon

  cmpq rax, 91
  je Staff_of_HomaWeapon

  cmpq rax, 92
  je The_CatchWeapon

  cmpq rax, 93
  je Vortex_VanquisherWeapon

  cmpq rax, 94
  je Wavebreakers_FinWeapon

  cmpq rax, 95
  je White_TasselWeapon

###################################################






OptionFiveAfter:

  # This prints that the player obtained the weapon to the screen 
  
  call PrintStringZ
  
  mov rcx, 7
  call SetForeColor

  lea rcx, ObtainingWeapon2
  call PrintStringZ

  mov rcx, WeaponAmount
  add rcx, 1
  mov WeaponAmount, rcx

  # 1/10 chance of happening to trigger the third random event

  cmpq rcx, 9
  je ThirdRandomEvent

  # This makes them pull again if they have more than 1 try otherwise they go back into the while loop

  cmpq rbx, 1
  jge OptionFive
  
  jmp While

###################################################





  # This is the third random event
  # It has a 1/10 chance of happening
  # When it triggers, the user can pull once more for free

ThirdRandomEvent:

  # This effectively makes it free by adding back the 16 primogems.

  mov rcx, PrimogemsAmount
  add rcx, 16
  mov PrimogemsAmount, rcx

  mov rcx, 3
  call SetForeColor

  lea rcx, LuckyAscii
  call PrintStringZ

  lea rcx, ThirdLuckyEvent
  call PrintStringZ

  mov rcx, 7
  call SetForeColor

  lea rcx, NewLine
  call PrintStringZ

  jmp OptionFive

###################################################






  # This is just when the wallet is below 0

BelowZero:

  lea rcx, WalletBelowZero
  call PrintStringZ

  jmp EqualsTwenty






  # This just shows all the statistics at the end when the week is 20 

EqualsTwenty:

  lea rcx, EqualsTwenty1
  call PrintStringZ

  mov rcx, 6
  call SetForeColor

  mov rcx, PrimogemsAmount
  call PrintInt

  mov rcx, 7
  call SetForeColor

  lea rcx, EqualsTwenty2
  call PrintStringZ

  mov rcx, 2
  call SetForeColor

  mov rcx, WalletAmount
  call PrintInt

  mov rcx, 7
  call SetForeColor

  lea rcx, EqualsTwenty3
  call PrintStringZ

  mov rcx, 3
  call SetForeColor
 
  mov rcx, CharacterAmount
  call PrintInt

  mov rcx, 7
  call SetForeColor

  lea rcx, EqualsTwenty4
  call PrintStringZ

  mov rcx, 3
  call SetForeColor

  mov rcx, WeaponAmount
  call PrintInt

  mov rcx, 7
  call SetForeColor

  lea rcx, EqualsTwenty5
  call PrintStringZ

  lea rcx, NewLine
  call PrintStringZ

  lea rcx, GoodbyeAscii
  call PrintStringZ

  call Exit

###################################################






  # This is how the character text are shown 
  # They are also color coded with their respective rarity 
  
AlbedoCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Albedo
  jmp OptionFourAfter

AloyCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Aloy
  jmp OptionFourAfter

AmberCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Amber
  jmp OptionFourAfter

Arataki_IttoCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Arataki_Itto
  jmp OptionFourAfter

BarbaraCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Barbara
  jmp OptionFourAfter

BeidouCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Beidou
  jmp OptionFourAfter

BennettCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Bennett
  jmp OptionFourAfter

ChongyunCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Chongyun
  jmp OptionFourAfter

DilucCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Diluc
  jmp OptionFourAfter

DionaCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Diona
  jmp OptionFourAfter

EulaCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Eula
  jmp OptionFourAfter

FischlCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Fischl
  jmp OptionFourAfter

GanyuCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Ganyu
  jmp OptionFourAfter

Hu_TaoCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Hu_Tao
  jmp OptionFourAfter

JeanCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Jean
  jmp OptionFourAfter

Kaedehara_KazuhaCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Kaedehara_Kazuha
  jmp OptionFourAfter

KaeyaCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Kaeya
  jmp OptionFourAfter

Kamisato_AyakaCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Kamisato_Ayaka
  jmp OptionFourAfter

KeqingCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Keqing
  jmp OptionFourAfter

KleeCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Klee
  jmp OptionFourAfter

Kujou_SaraCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Kujou_Sara
  jmp OptionFourAfter

LisaCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Lisa
  jmp OptionFourAfter

MonaCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Mona
  jmp OptionFourAfter

NingguangCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Ningguang
  jmp OptionFourAfter

NoelleCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Noelle
  jmp OptionFourAfter

QiqiCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Qiqi
  jmp OptionFourAfter

Raiden_ShogunCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Raiden_Shogun
  jmp OptionFourAfter

RazorCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Razor
  jmp OptionFourAfter

RosariaCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Rosaria
  jmp OptionFourAfter

Sangonomiya_KokomiCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Sangonomiya_Kokomi
  jmp OptionFourAfter

SayuCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Sayu
  jmp OptionFourAfter

SucroseCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Sucrose
  jmp OptionFourAfter

TartagliaCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Tartaglia
  jmp OptionFourAfter

ThomaCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Thoma
  jmp OptionFourAfter

TravelerCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Traveler
  jmp OptionFourAfter

VentiCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Venti
  jmp OptionFourAfter

XianglingCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Xiangling
  jmp OptionFourAfter

XiaoCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Xiao
  jmp OptionFourAfter

XingqiuCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Xingqiu
  jmp OptionFourAfter

XinyanCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Xinyan
  jmp OptionFourAfter

YanfeiCharacter:
  mov rcx, 5
  call SetForeColor

  lea rcx, Yanfei
  jmp OptionFourAfter

YoimiyaCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Yoimiya
  jmp OptionFourAfter

ZhongliCharacter:
  mov rcx, 3
  call SetForeColor

  lea rcx, Zhongli
  jmp OptionFourAfter






  # This is how the weapon text are shown
  # They are also color coded with their respective rarity 

Blackcliff_LongswordWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Blackcliff_Longsword
  jmp OptionFiveAfter

Cool_SteelWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Cool_Steel
  jmp OptionFiveAfter

Dark_Iron_SwordWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Dark_Iron_Sword
  jmp OptionFiveAfter

Dull_SwordWeapon:
  mov rcx, 7
  call SetForeColor

  lea rcx, Dull_Sword
  jmp OptionFiveAfter

Favonius_SwordWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Favonius_Sword
  jmp OptionFiveAfter

Festering_DesireWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Festering_Desire
  jmp OptionFiveAfter

Fillet_BladeWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Fillet_Blade
  jmp OptionFiveAfter

Harbinger_of_DawnWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Harbinger_of_Dawn
  jmp OptionFiveAfter

Iron_StingWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Iron_Sting
  jmp OptionFiveAfter

Lions_RoarWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Lions_Roar
  jmp OptionFiveAfter

Mistsplitter_ReforgedWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Mistsplitter_Reforged
  jmp OptionFiveAfter

Prototype_RancourWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Prototype_Rancour
  jmp OptionFiveAfter

Royal_LongswordWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Royal_Longsword
  jmp OptionFiveAfter

Sacrificial_SwordWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Sacrificial_Sword
  jmp OptionFiveAfter

Silver_SwordWeapon:
  mov rcx, 2
  call SetForeColor

  lea rcx, Silver_Sword
  jmp OptionFiveAfter

Skyrider_SwordWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Skyrider_Sword
  jmp OptionFiveAfter

Skyward_BladeWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Skyward_Blade
  jmp OptionFiveAfter

Summit_ShaperWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Summit_Shaper
  jmp OptionFiveAfter

Sword_of_DescensionWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Sword_of_Descension
  jmp OptionFiveAfter

The_Alley_FlashWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, The_Alley_Flash
  jmp OptionFiveAfter

The_Black_SwordWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, The_Black_Sword
  jmp OptionFiveAfter

The_FluteWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, The_Flute
  jmp OptionFiveAfter

Travelers_Handy_SwordWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Travelers_Handy_Sword
  jmp OptionFiveAfter

Alley_HunterWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Alley_Hunter
  jmp OptionFiveAfter

Amos_BowWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Amos_Bow
  jmp OptionFiveAfter

Blackcliff_WarbowWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Blackcliff_Warbow
  jmp OptionFiveAfter

Compound_BowWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Compound_Bow
  jmp OptionFiveAfter

Ebony_BowWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Ebony_Bow
  jmp OptionFiveAfter

Elegy_f__the_EndWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Elegy_f__the_End
  jmp OptionFiveAfter

Favonius_WarbowWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Favonius_Warbow
  jmp OptionFiveAfter

HamayumiWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Hamayumi
  jmp OptionFiveAfter

Hunters_BowWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Hunters_Bow
  jmp OptionFiveAfter

MessengerWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Messenger
  jmp OptionFiveAfter

Mitternachts_WaltzWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Mitternachts_Waltz
  jmp OptionFiveAfter

Mouuns_MoonWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Mouuns_Moon
  jmp OptionFiveAfter

Polar_StarWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Polar_Star
  jmp OptionFiveAfter

PredatorWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Predator
  jmp OptionFiveAfter

Prototype_CrescentWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Prototype_Crescent
  jmp OptionFiveAfter

Raven_BowWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Raven_Bow
  jmp OptionFiveAfter

Recurve_BowWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Recurve_Bow
  jmp OptionFiveAfter

Royal_BowWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Royal_Bow
  jmp OptionFiveAfter

RustWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Rust
  jmp OptionFiveAfter

Sacrificial_BowWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Sacrificial_Bow
  jmp OptionFiveAfter

Seasoned_Hunters_BowWeapon:
  mov rcx, 2
  call SetForeColor

  lea rcx, Seasoned_Hunters_Bow
  jmp OptionFiveAfter

Sharpshooters_OathWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Sharpshooters_Oath
  jmp OptionFiveAfter

Skyward_HarpWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Skyward_Harp
  jmp OptionFiveAfter

SlingshotWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Slingshot
  jmp OptionFiveAfter

The_Viridescent_HuntWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, The_Viridescent_Hunt
  jmp OptionFiveAfter

Amber_CatalystWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Amber_Catalyst
  jmp OptionFiveAfter

Apprentices_NotesWeapon:
  mov rcx, 7
  call SetForeColor

  lea rcx, Apprentices_Notes
  jmp OptionFiveAfter

Blackcliff_AgateWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Blackcliff_Agate
  jmp OptionFiveAfter

Dodoco_TalesWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Dodoco_Tales
  jmp OptionFiveAfter

Emerald_OrbWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Emerald_Orb
  jmp OptionFiveAfter

Everlasting_MoonglowWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Everlasting_Moonglow
  jmp OptionFiveAfter

Eye_of_PerceptionWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Eye_of_Perception
  jmp OptionFiveAfter

Favonius_CodexWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Favonius_Codex
  jmp OptionFiveAfter

FrostbearerWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Frostbearer
  jmp OptionFiveAfter

Hakushin_RingWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Hakushin_Ring
  jmp OptionFiveAfter

Lost_Prayer_to_the_Sacred_WindsWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Lost_Prayer_to_the_Sacred_Winds
  jmp OptionFiveAfter

Magic_GuideWeapon:
  mov rcx, 2
  call SetForeColor

  lea rcx, Magic_Guide
  jmp OptionFiveAfter

Mappa_MareWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Mappa_Mare
  jmp OptionFiveAfter

Memory_of_DustWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Memory_of_Dust
  jmp OptionFiveAfter

Otherworldly_StoryWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Otherworldly_Story
  jmp OptionFiveAfter

Pocket_GrimoireWeapon:
  mov rcx, 2
  call SetForeColor

  lea rcx, Pocket_Grimoire
  jmp OptionFiveAfter

Prototype_AmberWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Prototype_Amber
  jmp OptionFiveAfter

Prototype_MaliceWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Prototype_Malice
  jmp OptionFiveAfter

Royal_GrimoireWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Royal_Grimoire
  jmp OptionFiveAfter

Sacrificial_FragmentsWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Sacrificial_Fragments
  jmp OptionFiveAfter

Skyward_AtlasWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Skyward_Atlas
  jmp OptionFiveAfter

Solar_PearlWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Solar_Pearl
  jmp OptionFiveAfter

Thrilling_Tales_of_Dragon_SlayersWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Thrilling_Tales_of_Dragon_Slayers
  jmp OptionFiveAfter

Twin_NephriteWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Twin_Nephrite
  jmp OptionFiveAfter

Wine_and_SongWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Wine_and_Song
  jmp OptionFiveAfter

Beginners_ProtectorWeapon:
  mov rcx, 7
  call SetForeColor

  lea rcx, Beginners_Protector
  jmp OptionFiveAfter

Black_TasselWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Black_Tassel
  jmp OptionFiveAfter

Blackcliff_PoleWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Blackcliff_Pole
  jmp OptionFiveAfter

Crescent_PikeWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Crescent_Pike
  jmp OptionFiveAfter

Dragons_BaneWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Dragons_Bane
  jmp OptionFiveAfter

Dragonspine_SpearWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Dragonspine_Spear
  jmp OptionFiveAfter

Engulfing_LightningWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Engulfing_Lightning
  jmp OptionFiveAfter

Favonius_LanceWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Favonius_Lance
  jmp OptionFiveAfter

HalberdWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, Halberd
  jmp OptionFiveAfter

Iron_PointWeapon:
  mov rcx, 2
  call SetForeColor

  lea rcx, Iron_Point
  jmp OptionFiveAfter

Kitain_Cross_SpearWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Kitain_Cross_Spear
  jmp OptionFiveAfter

Kunwus_Iris_RiftWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Kunwus_Iris_Rift
  jmp OptionFiveAfter

Lithic_SpearWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Lithic_Spear
  jmp OptionFiveAfter

Primordial_Ja__Winged_SpearWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Primordial_Ja__Winged_Spear
  jmp OptionFiveAfter

Prototype_GrudgeWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Prototype_Grudge
  jmp OptionFiveAfter

Prototype_StarglitterWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Prototype_Starglitter
  jmp OptionFiveAfter

Royal_SpearWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Royal_Spear
  jmp OptionFiveAfter

Skyward_SpineWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Skyward_Spine
  jmp OptionFiveAfter

Staff_of_HomaWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Staff_of_Homa
  jmp OptionFiveAfter

The_CatchWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, The_Catch
  jmp OptionFiveAfter

Vortex_VanquisherWeapon:
  mov rcx, 3
  call SetForeColor

  lea rcx, Vortex_Vanquisher
  jmp OptionFiveAfter

Wavebreakers_FinWeapon:
  mov rcx, 5
  call SetForeColor

  lea rcx, Wavebreakers_Fin
  jmp OptionFiveAfter

White_TasselWeapon:
  mov rcx, 6
  call SetForeColor

  lea rcx, White_Tassel
  jmp OptionFiveAfter
