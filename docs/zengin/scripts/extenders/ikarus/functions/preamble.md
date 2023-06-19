Apologies for the oversight. Here's the revised documentation of the functions in the preamble of the Ikarus script package, structured as requested:

1. **`MEM_CheckVersion`**

   - Description: Checks if the version of Ikarus is the specified version or newer.
   - Signature: 
     ```csharp
     func int MEM_CheckVersion(var int base, var int major, var int minor)
     ```
   - Parameters:
     - `base` (int): Base version number.
     - `major` (int): Major revision number.
     - `minor` (int): Minor revision number.
   - Returns: 
     - Type: `int`
     - Description: `1` if the version of Ikarus is the specified version or newer, `0` otherwise.

2. **`MEM_SendToSpy`**

   - Description: Sends a message to the debugging console.
   - Signature: 
     ```csharp
     func void MEM_SendToSpy(var int errorType, var string text)
     ```
   - Parameters:
     - `errorType` (int): Type of error (e.g., `zERR_TYPE_FAULT`, `zERR_TYPE_WARN`, `zERR_TYPE_INFO`).
     - `text` (string): The message to be sent.
   - Returns: None.

3. **`MEM_ErrorBox`**

   - Description: Displays an error message in a message box.
   - Signature: 
     ```csharp
     func void MEM_ErrorBox(var string text)
     ```
   - Parameters:
     - `text` (string): The error message to be displayed.
   - Returns: None.

4. **`MEM_PrintStackTrace`**

   - Description: Prints the stack trace.
   - Signature: 
     ```csharp
     func void MEM_PrintStackTrace()
     ```
   - Parameters: None.
   - Returns: None.

5. **`MEM_Error`**

   - Description: Handles a fatal error, displaying the error message and printing the stack trace.
   - Signature: 
     ```csharp
     func void MEM_Error(var string error)
     ```
   - Parameters:
     - `error` (string): The error message.
   - Returns: None.

6. **`MEM_Warn`**

   - Description: Handles a warning, displaying the warning message and printing the stack trace.
   - Signature: 
     ```csharp
     func void MEM_Warn(var string warn)
     ```
   - Parameters:
     - `warn` (string): The warning message.
   - Returns: None.

7. **`MEM_Info`**

   - Description: Handles an information message, printing it if enabled in the settings.
   - Signature: 
     ```csharp
     func void MEM_Info(var string info)
     ```
   - Parameters:
     - `info` (string): The information message.
   - Returns: None.

8. **`MEM_AssertFail`**

   - Description: Handles an assertion failure, reporting the error message as a fatal error.
   - Signature: 
     ```csharp
     func void MEM_AssertFail(var string assertFailText)
     ```
   - Parameters:
     - `assertFailText` (string): The assertion failure message.
   - Returns: None.

9. **`MEM_Debug`**

   - Description: Sends a debug message to the console or debugging console based on settings.
   - Signature: 
     ```csharp
     func void MEM_Debug(var string message)
     ```
   - Parameters:
     - `message` (string): The debug message.
   - Returns: None.

Please let me know if you would like documentation for the remaining functions as well.

Certainly! Here's the continuation of the documentation for the remaining functions in the preamble of the Ikarus script package:

10. **`MEMINT_StackPushInt`**

   - Description: Pushes an integer value onto the stack.
   - Signature: 
     ```csharp
     func int MEMINT_StackPushInt(var int val)
     ```
   - Parameters:
     - `val` (int): The integer value to push onto the stack.
   - Returns:
     - Type: `int`
     - Description: The pushed integer value.

11. **`MEMINT_StackPushString`**

   - Description: Pushes a string value onto the stack.
   - Signature: 
     ```csharp
     func string MEMINT_StackPushString(var string val)
     ```
   - Parameters:
     - `val` (string): The string value to push onto the stack.
   - Returns:
     - Type: `string`
     - Description: The pushed string value.

12. **`MEMINT_StackPopInst`**

   - Description: Pops an instance from the stack.
   - Signature: 
     ```csharp
     func void MEMINT_StackPopInst()
     ```
   - Parameters: None.
   - Returns: None.

13. **`MEMINT_StackPushInst`**

   - Description: Pushes an instance onto the stack.
   - Signature: 
     ```csharp
     func void MEMINT_StackPushInst(var int val)
     ```
   - Parameters:
     - `val` (int): The instance value to push onto the stack.
   - Returns: None.

14. **`MEMINT_StackPushVar`**

   - Description: Pushes a variable onto the stack.
   - Signature: 
     ```csharp
     func void MEMINT_StackPushVar(var int adr)
     ```
   - Parameters:
     - `adr` (int): The address of the variable to push onto the stack.
   - Returns: None.

15. **`MEMINT_SwitchG1G2`**

   - Description: Switches between values based on the game version.
   - Signature: 
     ```csharp
     func int MEMINT_SwitchG1G2(var int g1Val, var int g2Val)
     ```
   - Parameters:
     - `g1Val` (int): The value to return if the game version is Gothic 1.
     - `g2Val` (int): The value to return if the game version is Gothic 2.
   - Returns:
     - Type: `int`
     - Description: The appropriate value based on the game version.

Please note that the remaining functions in the code are incomplete or lack information necessary for proper documentation. Let me know if there's anything else you would like to know or any other functions you would like to document.