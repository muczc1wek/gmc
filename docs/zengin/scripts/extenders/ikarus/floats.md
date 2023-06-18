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

func int mkf (var int x)
func int truncf (var int x)
func int addf (var int x, var int y)
func int mulf (var int x, var int y)
func int divf (var int x, var int y)
func int sqrf(var int f)
func int sqrtf(var int f)
func int negf (var int x)
func int absf (var int x)
func int subf (var int x, var int y)
func int roundf (var int x)
func int invf (var int x)
func int fracf (var int p, var int q)
func int sqrtf_approx(var int f)
func int gf (var int x, var int y)
func int gef (var int x, var int y)
func int lef (var int x, var int y)
func int lf (var int x, var int y)
func float castFromIntf(var int   f)
func int   castToIntf  (var float f)
func string toStringf(var int x)
func void printf(var int x)