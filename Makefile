CC=gcc 
ASSEMBLEFLAGS=-S -masm=intel -O0
CFLAGS=-fno-asynchronous-unwind-tables -no-pie
EXECUTABLENAME=finalproject
SOURCENAME=finalproject.c

$(EXECUTABLENAME)-stripped: $(EXECUTABLENAME)-debug
	strip $(EXECUTABLENAME)-debug -o $(EXECUTABLENAME)-stripped

$(EXECUTABLENAME)-debug: $(EXECUTABLENAME)-bloated.s
	$(CC) $(CFLAGS) $(EXECUTABLENAME)-bloated.s -o $(EXECUTABLENAME)-debug

$(EXECUTABLENAME)-bloated.s: $(SOURCENAME) replaceBloatedEquivalents.sed
	$(CC) $(CFLAGS) $(ASSEMBLEFLAGS) $(SOURCENAME) -o $(EXECUTABLENAME)-bloated.s
	sed -i -f replaceBloatedEquivalents.sed $(EXECUTABLENAME)-bloated.s

clean:
	rm $(EXECUTABLENAME)-stripped
	rm $(EXECUTABLENAME)-debug
	rm $(EXECUTABLENAME)-bloated.s

test:
	./$(EXECUTABLENAME)-stripped CS390{Sp@rk0_L1nk_0sh0ts3_Q1u}

.PHONY: clean test
