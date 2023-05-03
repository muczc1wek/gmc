# PermMem
PermMem is a powerful package that allows classes (or instances) to be used permanently even after loading or restarting. PermMem manages handles that are used to access instances, and provides various functions to manipulate these handles and instances.
## Dependencies

- [Saves](../applications/saves.md)
- [Locals](locals.md)

## Initialization
Initialize with `LeGo_PermMem` flag.
```dae
LeGo_Init(LeGo_PermMem);
```

## Implementation
[:material-github: PermMem.d on GitHub](https://github.com/Lehona/LeGo/blob/dev/PermMem.d)

## Functions

### `MEM_ReadStringArray`
Function moved to PermMem form [Ikarus](../../ikarus/functions/mem_access.md#mem_readstringarray). Reads string from the array at the `arrayAddress`. 
```dae
func string MEM_ReadStringArray(var int arrayAddress, var int index)
```
**Parameters**

- `#!dae var int arrayAddress`  
    Memory address of array
- `#!dae var int offset`  
    Array offset (array index)

**Return value**

The function returns string from the array if the address is correct.

### `MEM_ArraySortFunc`

```dae
func void MEM_ArraySortFunc(var int stream, var func fnc)
```