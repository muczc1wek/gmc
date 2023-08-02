---
title: Parser stuff
---
# `zCParser` related functions
Having only the address of the object, accessing the properties of the object is very inconvenient. It's better if the instance points to an object, then with `instance.property` you can access the properties of an object. This Ikarus part provides some useful functions to work with parser instances.

!!! Danger
    Remember to assign an instance to a correct class. If you assign an `oCNpc` pointer to `oCItem` class you won't be able to read any data from it.

## Initialization
The best way to initialize all Ikarus functions is to call `MEM_InitAll()` in the `Init_Global()` initialization function. 
!!! Warning
    If you want to use Ikarus in Gothic 1, it is best to define your own `Init_Global()` function and call it from every world initialization function.

```dae
MEM_InitAll();
```

## Implementation
[:material-github: Ikarus.d on GitHub](https://github.com/Lehona/Ikarus/blob/master/Ikarus.d#L513)

## Functions

### `MEM_PtrToInst`
Returns an instance pointed to by the pointer. If the pointer is null an error is thrown.
```dae
func MEMINT_HelperClass MEM_PtrToInst(var int ptr)
```
**Parameters**

- `#!dae var int ptr`  
    Pointer to return an instance from

**Shortcut**

In addition there is a function **`_^`** with the same signature and functionality as `MEM_PtrToInst`. It is used as a shortcut, since the converting pointer to instance is commonly used while working with Ikarus.

```dae
func MEMINT_HelperClass _^ (var int ptr)
```

??? abstract "Example"
    Following code
    ```dae
    var oCNpc her; her = MEM_PtrToInst(heroPtr);
    ```
    is equivalent to
    ```dae
    var oCNpc her; her = _^(heroPtr);
    ```


### `MEM_NullToInst`
Returns an instance from a null pointer.
```dae
func MEMINT_HelperClass MEM_NullToInst()
```

### `MEM_AssignInst`
Takes an instance from a pointer and assigns it to a given instance. If the pointer is null an error is thrown.
```dae
func void MEM_AssignInst(var int inst, var int ptr)
```
**Parameters**

- `#!dae var int ptr`  
    Pointer to assign an instance from
- `#!dae var int inst`  
    Instance to which the pointer will be assigned

??? abstract "Example"
    Following code
    ```dae
    var oCNpc inst;
    MEM_AssignInst (inst, ptr); 
    ```
    is equivalent to
    ```dae
    var oCNpc inst;
    inst = MEM_PtrToInst(ptr);
    ```

### `MEM_AssignInstNull`
Assigns null pointer to a given instance.
```dae
func void MEM_AssignInstNull(var int inst)
```
- `#!dae var int inst`  
    Instance to which the null pointer will be assigned

### `MEM_InstToPtr`
Returns a pointer to given instance.
```dae
func int MEM_InstToPtr(var int inst)
```
**Parameters**

- `#!dae var int inst`  
    The instance to which the pointer is returned

### `MEM_InstGetOffset`
Alias to `MEM_InstToPtr`. Returns a pointer to given instance.
```dae
func int MEM_InstGetOffset(var int inst)
```
**Parameters**

- `#!dae var int inst`  
    The instance to which the pointer is returned

### `MEM_CpyInst`
Returns a copy of a given instance
```dae
func MEMINT_HelperClass MEM_CpyInst(var int inst)
```
**Parameters**

- `#!dae var int inst`  
    Instance to copy

??? abstract "example"
    Following code
    ```dae
    selfCopy = MEM_CpyInst (self);
    ```
    is equivalent to
    ```dae
    selfCopy = MEM_PtrToInst (MEM_InstToPtr (self));
    ```

### `MEM_Call`
Calls a function.
```dae
func void MEM_Call(var func fnc)
```
**Parameters**

- `#!dae var func fnc`  
    Function to be called

### `MEM_CallByID`
Calls a function by its ID.
```dae
func void MEM_CallByID (var int symbID)
```
**Parameters**

- `#!dae var int symbID`  
    The ID of the function to be called

### `MEM_CallByPtr`
Calls a function by its pointer.
```dae
func void MEM_CallByPtr(var int ptr)
```
**Parameters**

- `#!dae var int ptr`  
    The pointer of the function to be called

### `MEM_CallByOffset`
Calls a function by its offset.
```dae
func void MEM_CallByOffset(var int offset)
```
**Parameters**

- `#!dae var int offset`  
    The offset of the function to be called

### `MEM_CallByString`
Calls a function by its name.
```dae
func void MEM_CallByString (var string fnc)
```
**Parameters**

- `#!dae var string fnc`  
    The name of the function IN CAPITAL LETTERS.

### `MEM_GetFuncID`
Returns the ID of the given function.
```dae
func int MEM_GetFuncID(var func fnc)
```
**Parameters**

- `#!dae var func fnc`  
    The function whose ID is returned

### `MEM_GetFuncPtr`
Returns the pointer of the given function.
```dae
func int MEM_GetFuncPtr(var func fnc)
```
**Parameters**

- `#!dae var func fnc`  
    The function whose pointer is returned

### `MEM_GetFuncOffset`
Returns the offset of the given function.
```dae
func int MEM_GetFuncOffset(var func fnc)
```
**Parameters**

- `#!dae var func fnc`  
    The function whose offset is returned

### `MEM_ReplaceFunc`
Replaces the `f1` function with `f2` function so if you call the first function, the second function is called.
```dae
func void MEM_ReplaceFunc(var func f1, var func f2)
```
**Parameters**

- `#!dae var func f1`  
    Function to replace
- `#!dae var func f2`  
    Function called instead of `f1`

### `MEM_GetIntAddress`
Returns an address of a given integer.
```dae
func int MEM_GetIntAddress(var int i)
```
**Parameters**

- `#!dae var int i`  
    Integer whose address is returned

**Shortcut**

In addition there is a function **`_@`** with the same signature and functionality as `MEM_GetIntAddress`.

```dae
func int _@(var int i)
```

### `MEM_GetFloatAddress`
Returns an address of a given daedalus float.
```dae
func int MEM_GetFloatAddress(var float f)
```
**Parameters**

- `#!dae var float f`  
    Float whose address is returned

**Shortcut**

In addition there is a function **`_@f`** with the same signature and functionality as `MEM_GetFloatAddress`.

```dae
func int _@s(var string s)
```

### `MEM_GetStringAddress`
Returns an address of a given string.
```dae
func int MEM_GetStringAddress(var string s)
```
**Parameters**

- `#!dae var string s`  
    String whose address is returned

**Shortcut**

In addition there is a function **`_@s`** with the same signature and functionality as `MEM_GetStringAddress`.

```dae
func int _@f(var float f)
```
