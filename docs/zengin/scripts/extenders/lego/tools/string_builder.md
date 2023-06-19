# StringBuilder

The provided code appears to be an incomplete implementation of a StringBuilder package in a programming language. The StringBuilder is a class that is used to efficiently build strings by appending or modifying characters.

Let's document the code based on its functionality:

### StringBuilder Class
The `StringBuilder` class is defined with the following variables:
- `ptr` (integer): Points to the buffer where characters are stored.
- `cln` (integer): Represents the current length of the string stored in the buffer.
- `cal` (integer): Represents the allocated size of the buffer.

### Constants
- `_SB_Current` (constant integer): Represents the index of the active `StringBuilder` object. It is initially set to 0.

### Functions

#### SB_Use
```plaintext
func void SB_Use(var int sb)
```
- Sets the active `StringBuilder` object to the provided index `sb`.

#### SB_Get
```plaintext
func int SB_Get()
```
- Returns the index of the active `StringBuilder` object.

#### SB_New
```plaintext
func int SB_New()
```
- Creates a new `StringBuilder` object, sets it as the active one, and returns its index.

#### SB_InitBuffer
```plaintext
func void SB_InitBuffer(var int size)
```
- Initializes the buffer of the active `StringBuilder` object with the specified size.
- If the object already has a buffer allocated, an error message is printed.
- If the specified size is less than 8, the size is set to 8.

#### SB_Clear
```plaintext
func void SB_Clear()
```
- Clears the contents of the active `StringBuilder` object.
- If the object has a buffer allocated, the buffer is freed.

#### SB_Release
```plaintext
func void SB_Release()
```
- Frees the memory associated with the active `StringBuilder` object.
- Sets the active `StringBuilder` to 0.

#### SB_Destroy
```plaintext
func void SB_Destroy()
```
- Clears the contents of the active `StringBuilder` object.
- Frees the memory associated with the active `StringBuilder` object.

#### SB_ToString
```plaintext
func string SB_ToString()
```
- Returns the contents of the active `StringBuilder` object as a string.
- If the `StringBuilder` object doesn't have a buffer allocated, an empty string is returned.
- The contents of the buffer are copied to a new string and returned.

#### SB_GetStream
```plaintext
func int SB_GetStream()
```
- Returns the underlying buffer of the active `StringBuilder` object as a stream.
- If there is no active `StringBuilder` object, 0 is returned.

#### SB_ToStream
```plaintext
func int SB_ToStream()
```
- Returns a copy of the underlying buffer of the active `StringBuilder` object as a stream.
- If there is no active `StringBuilder` object, 0 is returned.

#### SB_Length
```plaintext
func int SB_Length()
```
- Returns the current length of the active `StringBuilder` object.
- If there is no active `StringBuilder` object, 0 is returned.

#### SBraw
```plaintext
func void SBraw(var int ptr, var int len)
```
- Appends raw bytes to the buffer of the active `StringBuilder` object.
- If the `StringBuilder` object doesn't have a buffer allocated, a buffer of size 32 is initialized.
- If the length of the current string plus the length of the bytes exceeds the allocated buffer size, the buffer is reallocated with double the size.
- The bytes are copied to the buffer, and the length of the string is updated.

#### SB
```plaintext
func void SB(var string s)
```
- Appends a string

 `s` to the buffer of the active `StringBuilder` object.
- If the `StringBuilder` object doesn't have a buffer allocated, a buffer of size 32 is initialized.
- If the length of the current string plus the length of the input string exceeds the allocated buffer size, the buffer is reallocated with double the size.
- The input string is copied to the buffer, and the length of the string is updated.

#### SBi
```plaintext
func void SBi(var int x)
```
- Appends an integer value `x` (converted to ASCII characters) to the buffer of the active `StringBuilder` object.
- The integer value is first converted to a string representation using ASCII characters, and then it is appended to the buffer using the `SB` function.

#### SBc
```plaintext
func void SBc(var int c)
```
- Appends a character (represented as ASCII value `c`) to the buffer of the active `StringBuilder` object.
- The character is appended to the buffer using the `SB` function.

#### SBw
```plaintext
func void SBw(var int x)
```
- Appends a 4-byte raw data (interpreted as an integer `x`) to the buffer of the active `StringBuilder` object.
- The 4-byte data is appended to the buffer using the `SBraw` function.

#### SBflt
```plaintext
func void SBflt(var float x)
```
- Appends a floating-point value `x` (converted to ASCII characters) to the buffer of the active `StringBuilder` object.
- The floating-point value is first converted to a string representation using ASCII characters, and then it is appended to the buffer using the `SB` function.

#### SBf
```plaintext
func void SBf(var int x)
```
- Appends an integer value `x` (interpreted as a floating-point value) to the buffer of the active `StringBuilder` object.
- The integer value is interpreted as a float value and converted to a string representation using ASCII characters, and then it is appended to the buffer using the `SB` function.

#### SB_SetLength
```plaintext
func void SB_SetLength(var int length)
```
- Sets the length of the active `StringBuilder` object to the specified value by appending null bytes to the buffer.
- If the specified length is less than the current length, nothing is done.
- If the specified length is greater than the current length, null bytes are appended to the buffer until the specified length is reached.

### Helper Functions

#### STR_Escape
```plaintext
func string STR_Escape(var string s)
```
- Escapes special characters in the input string `s` using escape sequences.
- Returns a new string with escape sequences added for special characters.
- For example, newline character '\n' becomes "\\n", tab character '\t' becomes "\\t", etc.

#### STR_Unescape
```plaintext
func string STR_Unescape(var string s)
```
- Unescapes escape sequences in the input string `s`.
- Returns a new string with escape sequences replaced by their corresponding characters.
- For example, "\\n" becomes newline character '\n', "\\t" becomes tab character '\t', etc.

#### STR_StartsWith
```plaintext
func int STR_StartsWith(var string s, var string prefix)
```
- Checks if the input string `s` starts with the specified prefix string.
- Returns 1 if the string starts with the prefix, 0 otherwise.

### Additional Functions

- The code includes a function `BuildStringSymbolsArray` that creates an array of all string symbols found in the parser's string table.
- The code includes a function `GetStringSymbolByAddr` that retrieves the symbol

 at the specified address from the string table.

Note: This documentation is based on the provided code snippet, and there may be additional functions or dependencies not included in the code.