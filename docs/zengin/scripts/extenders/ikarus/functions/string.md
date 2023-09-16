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

- `#!dae var int char`  
    Pointer to the character array

**Return value**

The function returns the string representation of the character array.

### `STR_SubStr`
```dae
func string STR_SubStr (var string str, var int start, var int count)
```


### `STR_Prefix`
```dae
func string STR_Prefix (var string str, var int len)
```
   - Purpose: Extracts a substring from a given string.
   - Parameters: `string str` (the input string), `int start` (the starting position of the substring), `int count` (the length of the substring).
   - Returns: The extracted substring.

### `STR_Compare`
```dae
func int STR_Compare(var string str1, var string str2)
```
   - Purpose: Compares two strings and returns the result.
   - Parameters: `string str1` (the first string), `string str2` (the second string).
   - Returns: An integer indicating the comparison result: `STR_GREATER` (1) if `str1` is greater, `STR_EQUAL` (0) if they are equal, or `STR_SMALLER` (-1) if `str2` is greater.

### `STR_ToInt`
```dae
func int STR_ToInt (var string str)
```
   - Purpose: Converts a string to an integer.
   - Parameter: `string str` (the input string).
   - Returns: The integer value of the string.

### `STR_IndexOf`
```dae
func int STR_IndexOf(var string str, var string tok)
```
   - Purpose: Finds the index of a substring within a string.
   - Parameters: `string str` (the input string), `string tok` (the substring to find).
   - Returns: The index of the first occurrence of the substring in the string, or -1 if not found.

### `STR_Split`
```dae
func string STR_Split(var string str, var string separator, var int offset)
```

### `STR_SplitCount`
```dae
func int STR_SplitCount(var string str, var string seperator)
```
   - Purpose: These functions are related to splitting a string into substrings based on a separator.
   - `STR_Split`: Splits the string and retrieves a specific substring based on its offset.
   - `STR_SplitCount`: Returns the number of substrings obtained by splitting the string.

### `STR_Upper` 
```dae
func string STR_Upper(var string str)
```

### `STR_Lower`
```dae
func string STR_Lower(var string str)
```
   - Purpose: Converts a string to uppercase or lowercase.
   - Parameter: `string str` (the input string).
   - Returns: The converted string in uppercase or lowercase, respectively.
