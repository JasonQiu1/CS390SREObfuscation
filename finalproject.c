#include "stdio.h"
#include <stdlib.h>
#include "string.h"
char redacted[9] = {0x72,0x65,0x64,0x61,0x63,0x74,0x65,0x64,0x0};
char prefix[5] = {0x22, 0x31, 0x50, 0x5D, 0x55};
int section1[6] = {0x2d, 0x10, 0x40, 0xe, 0x15, 0x50};
int section3[7] = {0x29, 0x4d, 0x43, 0x4c, 0xf1, 0xd1, 0xee};
int location[30] = {0x2A, 0x3D, 0x40, 0x4D, 0x51, 0x1C, 0x21, 0x11, 0x2D, 0x5C, 0x08, 0x5F, 0x32, 0x63, 0x48, 0x01, 0x1E, 0x00, 0x42, 0x16, 0x1E, 0x55, 0x06, 0x00, 0x56, 0x3B, 0x0E, 0x58, 0x01, 0x52};

char *cocomelon2();
char *cocomelon3(int temp);

int transform(char* digits) {
	int res = 0;
	for (int i = 0; i < strlen(digits); i++) {
		res += digits[i];
	}
	return res;
}

int garbage() {
	int i;
	for (int j = 0; j < 5; j++) {
		int i = 0;
		i += 5;
		i /= 2;
		i *= 15;
	}
	return i;
}

int checkPrefix(char* guess){
	if(strlen(guess) < 5){
		return 0;
	}
	else{
		int j = 0x61;
		int i = 0;
		while(i < 5){
			if((guess[i] ^ j) == prefix[i]){
				i++;
				j++;
			}
			else{
				return 0;
			}
		}
		return 1;
	}
}

//Giving everything super obvious names for now so I remember what they do, TO-DO: change function names/strip code later
int checkSparko(char* guess){
	for(int i = 0; i < 6; i++){
		if((guess[6 + i] + section1[i]) != 0x80){
			return 0;
		}
	}	
	return 1;
}

int checkLink(char* guess){
	char *var1 = cocomelon2();
	if(guess[13] == var1[0]){
		if(guess[14] == var1[1]){
			if(guess[15] == var1[2]){
				return guess[16] == var1[3];
			}
		}
	}
}
int checkOshotse(char* guess){
	int temp = 0x12;
	int i = 7;
	int j = 0;
	// DO NOT REMOVE THIS CALL TO garbage, IT'S NECESSARY TO RESERVE THE STACK FRAME AND MAKE SURE BLOATED EQUIVALENTS WORK
	garbage();
	while(i > 0){
		if(((guess[18 + j] ^ temp) + i) != section3[j]){
			return 0;
		}
		temp += 0x22;
		j++;
		i--;

	}
	return 1;
}
int checkQiu(char* guess){
	int temp = 0xdeadbeef;
	for(int i = 1; i <= 25; i++){ //garbage code loop
		temp = temp ^ i; //temp == deadbeee
	}
	char* var1 = cocomelon3(temp);
	int j = 0;
	while(j < 3){
		if((int)var1[j] != (guess[j+26] + 0x3)){
			return 0;
		}
		j++;
	}
	return 1;
}

char *cocomelon() {
	static char str[] = ".dynsy";
	str[0] = 's';
	str[1] = 'e';
	str[2] = 'c';
	str[3] = 'r';
	str[4] = 'e';
	str[5] = 't';
	return str;
}

char *cocomelon2() {
	static char str[] = "__gm";
	str[0] = 'L';
	str[1] = '1';
	str[2] = 'n';
	str[3] = 'k';
	return str;
}

char *cocomelon3(int temp) {
	static char str[] = ".ab";
	str[0] = 'T';
	str[1] = '4';
	str[2] = 'x';
	return str;
}

int main(int argc, char** argv) {
	int sw = 1;
	char *var1 = cocomelon();
	int var2;

	while(sw != 0){
		switch(sw){
			case 1:
				if(argc == 1){
					sw = 12;
				}
				else{
					sw = 4;
				}
				break;
			case 2:
				for(int i = 0; i < 30; i++){ 
					printf("%c", argv[1][i] ^ location[i]); //gives correct location, replace later
				}
				puts("\n");
				sw = 8;
				break;
			
			case 3:
				if (transform("which branch?") < 1000) {
					printf("AWOOGA!");
				} else {
					puts("HMMMMMM");
				}
				sw = 0;
				break;
			case 4:
				var2 = checkPrefix(argv[1]);
				if(var2 == 0){ 
					sw = 5;
				}
				else{
					sw = 11;
				}
				break;
			case 5:
				printf("%s\n", redacted); 
				sw = 0;
				break;
			case 6:
				if(checkQiu(argv[1]) && argv[1][29] == '}'){
					sw = 2;
				}
				else{
					sw = 8;
				}
				break;
			case 7:
				if(checkSparko(argv[1]) && argv[1][12] == '_'){
					sw = 9;
				}
				else{
					sw = 8;
				}
				break;
			case 8:
				sw = 0;
				break;
			case 9:
				if(checkLink(argv[1]) && argv[1][17] == '_'){
					sw  = 10;
				}
				else{
					sw = 8;
				}
				break;
			case 10:
				if(checkOshotse(argv[1]) && argv[1][25] == '_'){
					sw = 6;
				}
				else{
					sw = 8;
				}
				break;
		
			case 11:
				if(argv[1][5] == '{'){
					sw = 7;
				}
				else{
					sw = 8;
				}
				break;
			case 12:
				printf("The first number is %d.\n", transform("red herring?"));
				printf("The second number is %d.\n", garbage());
				sw = 3;
				break;
		}
	}
	return 0;
	
	//correct pass: CS390{Sp@rk0_L1nk_0sh0ts3_Q1u}
}
