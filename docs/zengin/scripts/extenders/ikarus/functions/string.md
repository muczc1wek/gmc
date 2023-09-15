# String operations


## Initialization
The best way to initialize all Ikarus functions is to call `MEM_InitAll()` in the `Init_Global()` initialization function. 
!!! warning
    If you want to use Ikarus in Gothic 1, it is best to define your own `Init_Global()` function and call it from every world initialization function.

```dae
MEM_InitAll();
```

## Implementation
[:material-github: Ikarus.d on GitHub](https://github.com/Lehona/Ikarus/blob/master/Ikarus.d#L2341)

## Functions

### `STR_GetCharAt`
Returns the ASCII value of a character at a specific position in a string.
```dae
func int STR_GetCharAt (var string str, var int pos)
```
**Parameters**:

- `#!dae var string str`  
    The input string
- `#!dae var int pos`  
    The position of the character

**Return value**

The function returns the ASCII value of the character at the specified position.

### `STR_Len`
Returns the length of a string.
```dae
func int STR_Len (var string str)
```
**Parameters**:

- `#!dae var string str`  
    The input string

**Return value**

The function returns the length of the string in characters.

### `STR_toChar`
Converts a string to a pointer to its character array.
```dae
func int STR_toChar (var string str)
```
**Parameters**:

- `#!dae var string str`  
    The input string

**Return value**

The function returns a pointer to the character array representing the input string `str`

### `STR_FromChar`
Converts a character array to a string.
```dae
func string STR_FromChar(var int char)
```
**Parameters**:

- `#!dae var string str`  
    The input string

**Return value**

The function returns
   - Parameter: `int char` (the input character).
   - Returns: The string representation of the character.

5. `STR_SubStr` and `STR_Prefix`:
   - Purpose: Extracts a substring from a given string.
   - Parameters: `string str` (the input string), `int start` (the starting position of the substring), `int count` (the length of the substring).
   - Returns: The extracted substring.

6. `STR_Compare`:
   - Purpose: Compares two strings and returns the result.
   - Parameters: `string str1` (the first string), `string str2` (the second string).
   - Returns: An integer indicating the comparison result: `STR_GREATER` (1) if `str1` is greater, `STR_EQUAL` (0) if they are equal, or `STR_SMALLER` (-1) if `str2` is greater.

7. `STR_ToInt`:
   - Purpose: Converts a string to an integer.
   - Parameter: `string str` (the input string).
   - Returns: The integer value of the string.

8. `STR_IndexOf`:
   - Purpose: Finds the index of a substring within a string.
   - Parameters: `string str` (the input string), `string tok` (the substring to find).
   - Returns: The index of the first occurrence of the substring in the string, or -1 if not found.

9. `STRINT_SplitReset`, `STRINT_Split`, `STRINT_SplitGet`, `STR_Split`, and `STR_SplitCount`:
   - Purpose: These functions are related to splitting a string into substrings based on a separator.
   - `STRINT_SplitReset`: Resets the internal state for splitting.
   - `STRINT_Split`: Splits the string into substrings based on the separator.
   - `STRINT_SplitGet`: Retrieves a specific substring based on its offset.
   - `STR_Split`: Splits the string and retrieves a specific substring based on its offset.
   - `STR_SplitCount`: Returns the number of substrings obtained by splitting the string.

10. `STR_Upper` and `STR_Lower`:
   - Purpose: Converts a string to uppercase or lowercase.
   - Parameter: `string str` (the input string).
   - Returns: The converted string in uppercase or lowercase, respectively.

It's important to note that this code snippet may not be complete, as it seems to be a part of a larger codebase. The missing parts could include function declarations, required headers, and additional utility functions.