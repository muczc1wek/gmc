# Utility

## Initialization

## Implementation

## Functions

### `MEM_SetShowDebug`
Sets the variable that is also toggled by the `toggle debug` command. As a result, messages outputted by `PrintDebug` are directed to the [zSpy](../../../../tools/zSpy.md)
```dae
func void MEM_SetShowDebug(var int on)
```
**Parameters**

- `#!dae var int on` - Specifies whether to turn on (`TRUE`) or off (`FALSE`) debug information.


## MEM_CopyBytes

- Description: Copies a specified number of bytes from the source address to the destination address.
- Signature:
  ```csharp
  func void MEM_CopyBytes(var int src, var int dst, var int byteCount)
  ```
- Parameters:
  - `src` (int): The source address to copy from.
  - `dst` (int): The destination address to copy to.
  - `byteCount` (int): The number of bytes to copy.
- Returns: None.

## MEM_CopyWords

- Description: Copies a specified number of words from the source address to the destination address.
- Signature:
  ```csharp
  func void MEM_CopyWords(var int src, var int dst, var int wordCount)
  ```
- Parameters:
  - `src` (int): The source address to copy from.
  - `dst` (int): The destination address to copy to.
  - `wordCount` (int): The number of words to copy.
- Returns: None.

## MEM_Copy

- Description: (Alias) Copies a specified number of words from the source address to the destination address.
- Signature:
  ```csharp
  func void MEM_Copy(var int src, var int dst, var int wordCount)
  ```
- Parameters:
  - `src` (int): The source address to copy from.
  - `dst` (int): The destination address to copy to.
  - `wordCount` (int): The number of words to copy.
- Returns: None.

## MEM_SwapBytes

- Description: Swaps a specified number of bytes between the source address and the destination address.
- Signature:
  ```csharp
  func void MEM_SwapBytes(var int src, var int dst, var int byteCount)
  ```
- Parameters:
  - `src` (int): The source address to swap from.
  - `dst` (int): The destination address to swap to.
  - `byteCount` (int): The number of bytes to swap.
- Returns: None.

## MEM_Swap

- Description: Swaps a specified number of words between the source address and the destination address.
- Signature:
  ```csharp
  func void MEM_Swap(var int src, var int dst, var int wordCount)
  ```
- Parameters:
  - `src` (int): The source address to swap from.
  - `dst` (int): The destination address to swap to.
  - `wordCount` (int): The number of words to swap.
- Returns: None.

## MEM_SwapWords

- Description: Swaps a specified number of words between the source address and the destination address.
- Signature:
  ```csharp
  func void MEM_SwapWords(var int src, var int dst, var int wordCount)
  ```
- Parameters:
  - `src` (int): The source address to swap from.
  - `dst` (int): The destination address to swap to.
  - `wordCount` (int): The number of words to swap.
- Returns: None.

## MEM_Clear

- Description: Sets a specified number of bytes in memory to zero.
- Signature:
  ```csharp
  func void

 MEM_Clear(var int ptr, var int size)
  ```
- Parameters:
  - `ptr` (int): The memory address to start clearing from.
  - `size` (int): The number of bytes to clear.
- Returns: None.

## MEM_Realloc

- Description: Copies memory to a new array and returns the new array pointer. If the original pointer is null, it allocates a new block of memory.
- Signature:
  ```csharp
  func int MEM_Realloc(var int ptr, var int oldsize, var int newsize)
  ```
- Parameters:
  - `ptr` (int): The original pointer to the memory block.
  - `oldsize` (int): The size of the original memory block.
  - `newsize` (int): The size of the new memory block.
- Returns:
  - int: The new array pointer.

## MEM_CompareBytes

- Description: Compares a specified number of bytes between two memory blocks.
- Signature:
  ```csharp
  func int MEM_CompareBytes(var int ptr1, var int ptr2, var int byteCount)
  ```
- Parameters:
  - `ptr1` (int): The first memory block to compare.
  - `ptr2` (int): The second memory block to compare.
  - `byteCount` (int): The number of bytes to compare.
- Returns:
  - int: Returns `1` if the memory blocks are equal, `0` otherwise.

## MEM_CompareWords

- Description: Compares a specified number of words between two memory blocks.
- Signature:
  ```csharp
  func int MEM_CompareWords(var int ptr0, var int ptr1, var int wordCount)
  ```
- Parameters:
  - `ptr0` (int): The first memory block to compare.
  - `ptr1` (int): The second memory block to compare.
  - `wordCount` (int): The number of words to compare.
- Returns:
  - int: Returns `1` if the memory blocks are equal, `0` otherwise.

## MEM_Compare

- Description: (Alias) Compares a specified number of words between two memory blocks.
- Signature:
  ```csharp
  func int MEM_Compare(var int ptr0, var int ptr1, var int wordCount)
  ```
- Parameters:
  - `ptr0` (int): The first memory block to compare.
  - `ptr1` (int): The second memory block to compare.
  - `wordCount` (int): The number of words to compare.
- Returns:
  - int: Returns `1` if the memory blocks are equal, `0` otherwise.

Please let me know if you need further assistance with the documentation!