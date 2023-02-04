/*
-------------------------------------------------------
l01.s
Assign to and add contents of registers.
-------------------------------------------------------
Author:  Roshni Mahindru
ID:      210756010
Email:   mahi6010@mylalurier.ca
Date:    2022-01-26
-------------------------------------------------------
*/
.org    0x1000  // Start at memory location 1000
.text           // Code section
.global _start
_start:

MOV r0, #9      // Store decimal 9 in register r0
MOV r1, #14     // Store hex E (decimal 14) in register r1
//(Changing #0xE to decimal does not change behaviour of the code)
ADD r2, r1, r0  // Add the contents of r0 and r1 and put result in r2
MOV r3, #8      // Store decimal value 8 in register r3
ADD r3, r3, r3  // add value of register r3 to value in register r3 and put result into register r3
//Yes, this is legal
ADD r4, r2, #5  // adds value of register r2 and immediate value 5 and puts in register 4
//It is not legal to add two decimal numbers and put into a register
//It works when r4 = r2 + 5

// End program
_stop:
B   _stop

.end