---
title: ASM
---
## Ikarus Machine Code Implementation Documentation

This documentation provides an overview of the Ikarus machine code implementation, which includes constants, an internal stack, and the ASM core functionality.

### Constants

The code defines several constants that represent different machine code instructions. Each constant is assigned a hexadecimal value and corresponds to a specific machine code instruction. Here are the defined constants:

- `ASMINT_OP_movImToEAX`: Represents the "mov immediate to EAX" instruction.
- `ASMINT_OP_movImToECX`: Represents the "mov immediate to ECX" instruction.
- `ASMINT_OP_movImToEDX`: Represents the "mov immediate to EDX" instruction.
- `ASMINT_OP_pushIm`: Represents the "push immediate" instruction.
- `ASMINT_OP_call`: Represents the "call" instruction.
- `ASMINT_OP_retn`: Represents the "return" instruction.
- `ASMINT_OP_nop`: Represents the "no operation" instruction.
- `ASMINT_OP_jmp`: Represents the "jump" instruction.
- `ASMINT_OP_cld`: Represents the "clear direction flag" instruction.
- `ASMINT_OP_repz`: Represents the "repeat zero" instruction.
- `ASMINT_OP_cmpsb`: Represents the "compare string byte" instruction.
- `ASMINT_OP_PushEAX`: Represents the "push EAX" instruction.
- `ASMINT_OP_pushECX`: Represents the "push ECX" instruction.
- `ASMINT_OP_popEAX`: Represents the "pop EAX" instruction.
- `ASMINT_OP_popECX`: Represents the "pop ECX" instruction.
- `ASMINT_OP_pusha`: Represents the "push all registers" instruction.
- `ASMINT_OP_popa`: Represents the "pop all registers" instruction.
- `ASMINT_OP_movMemToEAX`: Represents the "move memory to EAX" instruction.
- `ASMINT_OP_movALToMem`: Represents the "move AL to memory" instruction.
- `ASMINT_OP_movEAXToMem`: Represents the "move EAX to memory" instruction (2 bytes).
- `ASMINT_OP_movEAXToAL`: Represents the "move EAX to AL" instruction (2 bytes).
- `ASMINT_OP_movCLToEAX`: Represents the "move CL to EAX" instruction (2 bytes).
- `ASMINT_OP_floatStoreToMem`: Represents the "store floating-point to memory" instruction (2 bytes).
- `ASMINT_OP_addImToESP`: Represents the "add immediate to ESP" instruction (2 bytes).
- `ASMINT_OP_movMemToECX`: Represents the "move memory to ECX" instruction (2 bytes).
- `ASMINT_OP_movMemToCL`: Represents the "move memory to CL" instruction (2 bytes).
- `ASMINT_OP_movMemToEDX`: Represents the "move memory to EDX" instruction (2 bytes).
- `ASMINT_OP_movMemToEDI`: Represents the "move memory to EDI" instruction (2 bytes).
- `ASMINT_OP_movMemToESI`: Represents the "move memory to ESI" instruction (2 bytes).
- `ASMINT_OP_movECXtoEAX`: Represents the "move ECX to EAX" instruction (2 bytes).
- `ASMINT_OP_movESPtoEAX`: Represents the "move ESP to EAX" instruction (2 bytes).
- `ASMINT_OP_movEAXtoECX`: Represents the "move EAX to ECX" instruction (2 bytes).
- `ASMINT_OP_movEBXtoEAX`: Represents the "move EB
- `ASMINT_OP_movEBXtoEAX`: Represents the "move EBX to EAX" instruction (2 bytes).
- `ASMINT_OP_movEBPtoEAX`: Represents the "move EBP to EAX" instruction (2 bytes).
- `ASMINT_OP_movEDItoEAX`: Represents the "move EDI to EAX" instruction (2 bytes).
- `ASMINT_OP_addImToEAX`: Represents the "add immediate to EAX" instruction (2 bytes).
- `ASMINT_OP_setzMem`: Represents the "set memory to zero" instruction (3 bytes).

### Internal Stack

The code includes an internal stack implementation, allowing the storage of data at two points:

- When calling an engine function, the address of the current run is stored in the internal stack.
- When nesting the use of the Call package, a push and pop operation is performed to manage the context.

The internal stack is implemented using an array, and the following functions are provided:

- `ASMINT_Push(var int data)`: Pushes the specified data onto the internal stack.
- `ASMINT_Pop(): int`: Pops and returns the topmost data from the internal stack.

### ASM Core

The ASM core functionality provides a framework for assembling machine code instructions and executing them. The following functions are included:

- `ASMINT_Init()`: Initializes the ASM system by creating an internal stack and finding function addresses.
- `ASM_Open(var int space)`: Opens a new stream for assembling code. If the space parameter is not specified, a default size (ASM_StandardStreamLength) is used.
- `ASM(var int data, var int length)`: Writes machine code instructions to the stream. The data parameter represents the instruction, and the length parameter indicates the size of the instruction.
- `ASM_1(var int data)`, `ASM_2(var int data)`, `ASM_3(var int data)`, `ASM_4(var int data)`: Convenience functions to write machine code instructions of specific lengths (1, 2, 3, or 4 bytes) to the stream.
- `ASM_Here(): int`: Returns the current position in the stream.
- `ASM_Close(): int`: Finalizes the stream by adding a return instruction and returns the starting address of the stream.
- `ASM_Run(var int ptr)`: Executes the assembled code by setting the call target and calling an external function (`ASMINT_CallMyExternal`).
- `ASM_RunOnce()`: Executes the assembled code once, allowing multiple instances of the function to run simultaneously. This function handles the saving and discarding of the code.
