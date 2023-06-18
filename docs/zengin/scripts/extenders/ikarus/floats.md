# Floats
This part of ikarus implements support for 32 bit IEEE 754 floats in Daedalus. The script was originally created to edit `zFLOAT` and `zREAL` variables, but can also be used to arthmetic operations on real float values (not to be confused with Daedalus floats).

## Initialization
The best way to initialize all Ikarus functions is to call `MEM_InitAll()` in the `Init_Global()` initialization function. 
!!! warning
    If you want to use Ikarus in Gothic 1, it is best to define your own `Init_Global()` function and call it from every world initialization function.

```dae
MEM_InitAll();
```

## Implementation
[:material-github: float.d on GitHub](https://github.com/Lehona/Ikarus/blob/master/float.d)

## Functions
!!! Warning
    Ikarus floats are saved as int but it doesn't mean that you can use arthmetic operators on them. All operations on floats must be done with functions listed below.

### `mkf`
(make float) Turns an integer into a float.
```dae
func int mkf (var int x)
```
**Parameters**

-`#!dae var int x`  
    Integer that turns into a float

**Return value**
The function 