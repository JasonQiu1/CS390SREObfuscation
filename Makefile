CC=gcc 
ASSEMBLEFLAGS=-S -masm=intel -O0
CFLAGS=-fno-asynchronous-unwind-tables -no-pie
EXECUTABLENAME=finalproject
SOURCENAME=finalproject.c

$(EXECUTABLENAME)-stripped: $(EXECUTABLENAME)-debug
	strip $(EXECUTABLENAME)-debug -o $(EXECUTABLENAME)-stripped

$(EXECUTABLENAME)-debug: $(EXECUTABLENAME)-bloated.s
	$(CC) $(CFLAGS) $(EXECUTABLENAME)-bloated.s -o $(EXECUTABLENAME)-debug

$(EXECUTABLENAME)-bloated.s: $(SOURCENAME)
	$(CC) $(CFLAGS) $(ASSEMBLEFLAGS) $(SOURCENAME) -o $(EXECUTABLENAME)-bloated.s
	sed -i -f replaceBloatedEquivalents.sed $(EXECUTABLENAME)-bloated.s

clean:
	rm $(EXECUTABLENAME)-stripped
	rm $(EXECUTABLENAME)-debug
	rm $(EXECUTABLENAME)-bloated.s

.PHONY: clean
