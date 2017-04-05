/*
Author: Liyakhath Asif
Project: eos

*/



kmain() { // this function is defined in kernal.asm and is redirected from there to here at runtime

	char* vidmem = (char*) 0xb8000;
	vidmem[0] = 'B';
	vidmem[1] = 0x02; // grey colour for the character in the previous index in array(videoMemory)

}