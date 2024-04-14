CC=/bin/gcc 
ASSEMBLEFLAGS=-S -masm=intel -O0
CFLAGS=-no-pie
EXECUTABLENAME=finalproject
SOURCENAME=finalproject.c

$(EXECUTABLENAME)-stripped: $(EXECUTABLENAME)-debug
	strip $(EXECUTABLENAME)-debug -o $(EXECUTABLENAME)-stripped
	# Enable stack execution
	execstack -s $(EXECUTABLENAME)-stripped

$(EXECUTABLENAME)-debug: $(EXECUTABLENAME)-bloated.s
	$(CC) $(CFLAGS) $(EXECUTABLENAME)-bloated.s -o $(EXECUTABLENAME)-debug
	# Enable stack execution
	execstack -s $(EXECUTABLENAME)-debug

$(EXECUTABLENAME)-bloated.s: $(SOURCENAME) replaceBloatedEquivalents.sed
	$(CC) $(CFLAGS) $(ASSEMBLEFLAGS) $(SOURCENAME) -o $(EXECUTABLENAME)-bloated.s
	sed -i -f replaceBloatedEquivalents.sed $(EXECUTABLENAME)-bloated.s
	# Generate patch files using 'diff finalproject-bloated.s finalproject-bloated-stack.s -Naru > add_stack_execution.patch'
	patch < add_stack_execution.patch

clean:
	rm $(EXECUTABLENAME)-stripped
	rm $(EXECUTABLENAME)-debug
	rm $(EXECUTABLENAME)-bloated.s

test:
	./$(EXECUTABLENAME)-stripped 83042403c3CS390{Sp@rk0_L1nk_0sh0ts3_Q1u}

.PHONY: clean test
