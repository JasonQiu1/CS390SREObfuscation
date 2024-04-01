## IDEAS

### Which obfuscation techniques would we like to incorporate, and how will we do this?
### Encryption
We can encrypt the password in multiple different parts of the program. If we're evil, we can encrypt different parts of the password with using different encryption algorithms or keys. 
### Bloating
We can write scripts to replace certain instructions with bloated equivalents automatically.
### Control flow manipulation 
We can also use scripts to arbitrarily add random functions, function calls and garbage code throughout the assembly that manipulates control flow but does not affect the execution of the program.

### How will we obfuscate strings?
We will obfuscate strings by storing them in small chunks that will not be visible with the strings command. We'll also use dummy-strings that are filled in with real values from memory at different parts of the program.

### How will we check the user's password?
We could set specific characters in the password to split it up and be able to check different parts at a time (similar to how the CTFlearn Raspberry challenge did).

### How will we prevent the user from printing the location with a simple jump to the print statement?
The location will never be stored all together. Several steps of the program will have to run to build up the location string before the print statement is called, so jumping to the print early, could print something incorrect or incomplete. We will also include some strings that will throw off the reverser (provide a fake password that is discoverable by the strings call).

### How will we display the location?
Maybe coordinates or we can make a funny little video. We can decide more so when we choose a location to hide the object.

