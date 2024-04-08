#!/bin/sed
s:ret:pop r15\n	jmp r15:g
s:jmp\s*\(\.L[0-9]\+\):lea r15, \1\n\tpush r15\n\tret:g
/@/!s:call\s*\([0-9a-Z]\+\):lea r15, \1\n\tlea r14, [rip+5]\n\tpush r14\n\tpush r15\n\tret:g
