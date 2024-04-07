#include "stdio.h"
#include <stdlib.h>
#include "string.h"
char redacted[9] = {0x72,0x65,0x64,0x61,0x63,0x74,0x65,0x64,0x0};
char prefix[5] = {0x22, 0x31, 0x50, 0x5D, 0x55};
int section1[6] = {0x2d, 0x10, 0x40, 0xe, 0x15, 0x50};
int section3[7] = {0x29, 0x4d, 0x43, 0x4c, 0xf1, 0xd1, 0xee};

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

	char *var1 = cocomelon();
	int var2;
	if (argc == 1) {
		printf("The first number is %d.\n", transform("red herring?"));
		printf("The second number is %d.\n", garbage());
		if (transform("which branch?") < 1000) {
			printf("AWOOGA!");
		} else {
			puts("HMMMMMM");
		}
		return 0;
	}
	else{
		var2 = checkPrefix(argv[1]);
		if(var2 == 0){ //maybe add if the prefix is wrong, begin constructing an incorrect location, fill with lots of flattened garbage code to waste time
			printf("%s\n", redacted); //replace later
		}
		else{ //check rest of the string for correctness, like Rasberry code
			if(argv[1][5] == '{'){
				if(checkSparko(argv[1]) && argv[1][12] == '_'){
					if(checkLink(argv[1]) && argv[1][17] == '_'){
						if(checkOshotse(argv[1]) && argv[1][25] == '_'){
							if(checkQiu(argv[1])){
								puts("Correct password entered, the location is: ..."); //replace later
							}
						}
					}
				}
			}
		}
	}
	//correct pass: CS390{Sp@rk0_L1nk_0sh0ts3_Q1u}
	
	return 0;
}
