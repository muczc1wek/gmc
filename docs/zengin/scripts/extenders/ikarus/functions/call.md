# CALL Package
This part of Ikarus makes possible to call engine functions directly from scripts.

In order to be able to use a function, one must know number and type of parameters, the type of return value and address of function and calling convention.
This knowledge of engine functions can be gained using IDA or other disassembler.

!!! Info
    In fact, machine code execution is part of the CALL package, but due to its complexity, this functionality will be discussed in a separate article.

## Initialization
The best way to initialize all Ikarus functions is to call `MEM_InitAll()` in the `Init_Global()` initialization function. 
!!! warning
    If you want to use Ikarus in Gothic 1, it is best to define your own `Init_Global()` function and call it from every world initialization function.

```dae
MEM_InitAll();
```

## Implementation
[:material-github: Ikarus.d on GitHub](https://github.com/Lehona/Ikarus/blob/master/Ikarus.d#L1269)

## Passing parameters
