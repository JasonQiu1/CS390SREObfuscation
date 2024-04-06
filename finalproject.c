#include "stdio.h"
#include <stdlib.h>
#include "string.h"

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

int main(int argc, char** argv) {

	char *var1 = cocomelon();

	if (argc == 1) {
		printf("The first number is %d.\n", transform("red herring?"));
		printf("The second number is %d.\n", garbage());
		if (transform("which branch?") < 1000) {
			printf("AWOOGA!");
		} else {
			puts("HMMMMMM");
		}
		return 0;
	} else if (strcmp(argv[1], var1) == 0) {
		puts("Correct password entered, the location is: ...");
	}else{
		puts("you didn't enter the correct password");
	}
	return 0;
}
