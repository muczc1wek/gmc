Certainly! Here's the documentation for the functions in the requested format:

## `MEM_InitGlobalInst`

**Description:** This function initializes global instances of commonly used objects in the game.

**Signature:**
```cpp
void MEM_InitGlobalInst();
```

## `MEM_GetClassDef`

**Description:** This function retrieves the class definition of an object given its memory address.

**Signature:**
```cpp
void* MEM_GetClassDef(void* objPtr);
```

**Parameters:**
- `objPtr`: A pointer to the object whose class definition is to be retrieved.

**Return Value:**
- Returns a void pointer to the class definition of the object.

## `MEM_GetClassName`

**Description:** This function returns the name of the class to which an object belongs.

**Signature:**
```cpp
const char* MEM_GetClassName(void* objPtr);
```

**Parameters:**
- `objPtr`: A pointer to the object whose class name is to be retrieved.

**Return Value:**
- Returns a pointer to a constant character string representing the class name.

## `MEM_CheckInheritance`

**Description:** This function checks if an object is derived from a specific class definition.

**Signature:**
```cpp
int MEM_CheckInheritance(void* objPtr, void* classDef);
```

**Parameters:**
- `objPtr`: A pointer to the object to be checked.
- `classDef`: A pointer to the class definition to check against.

**Return Value:**
- Returns 1 if the object is derived from the specified class definition, 0 otherwise.

## `Hlp_Is_*` Functions

These functions check if an object belongs to a specific class.

- `Hlp_Is_oCMobFire(void* objPtr)`
- `Hlp_Is_zCMover(void* objPtr)`
- `Hlp_Is_oCMob(void* objPtr)`
- `Hlp_Is_oCMobInter(void* objPtr)`
- `Hlp_Is_oCMobLockable(void* objPtr)`
- `Hlp_Is_oCMobContainer(void* objPtr)`
- `Hlp_Is_oCMobDoor(void* objPtr)`
- `Hlp_Is_oCMobBed(void* objPtr)`
- `Hlp_Is_oCMobSwitch(void* objPtr)`
- `Hlp_Is_oCMobWheel(void* objPtr)`
- `Hlp_Is_oCMobLadder(void* objPtr)`
- `Hlp_Is_oCNpc(void* objPtr)`
- `Hlp_Is_oCItem(void* objPtr)`
- `Hlp_Is_zCVobLight(void* objPtr)`

**Description:** These functions check if an object is an instance of a specific class.

**Signature:**
```cpp
int Hlp_Is_* (void* objPtr);
```

**Parameters:**
- `objPtr`: A pointer to the object to be checked.

**Return Value:**
- Returns 1 if the object is an instance of the specified class, 0 otherwise.

(Note: Replace `*` with the specific class name)

Please let me know if you'd like me to continue with the documentation for the remaining functions.

Certainly! Here's the documentation for the remaining functions:

## `Hlp_Get_*` Functions

These functions retrieve instances of specific classes from an object.

- `Hlp_Get_oCMobFire(void* objPtr)`
- `Hlp_Get_zCMover(void* objPtr)`
- `Hlp_Get_oCMob(void* objPtr)`
- `Hlp_Get_oCMobInter(void* objPtr)`
- `Hlp_Get_oCMobLockable(void* objPtr)`
- `Hlp_Get_oCMobContainer(void* objPtr)`
- `Hlp_Get_oCMobDoor(void* objPtr)`
- `Hlp_Get_oCMobBed(void* objPtr)`
- `Hlp_Get_oCMobSwitch(void* objPtr)`
- `Hlp_Get_oCMobWheel(void* objPtr)`
- `Hlp_Get_oCMobLadder(void* objPtr)`
- `Hlp_Get_oCNpc(void* objPtr)`
- `Hlp_Get_oCItem(void* objPtr)`
- `Hlp_Get_zCVobLight(void* objPtr)`

**Description:** These functions retrieve instances of specific classes from an object if it is an instance of the specified class or derived from it.

**Signature:**
```cpp
void* Hlp_Get_* (void* objPtr);
```

**Parameters:**
- `objPtr`: A pointer to the object from which the instance is to be retrieved.

**Return Value:**
- Returns a void pointer to the instance of the specified class if found, otherwise returns `nullptr`.

(Note: Replace `*` with the specific class name)

## `Hlp_IsObjectOfClass`

**Description:** This function checks if an object is an instance of a specific class.

**Signature:**
```cpp
int Hlp_IsObjectOfClass(void* objPtr, const char* className);
```

**Parameters:**
- `objPtr`: A pointer to the object to be checked.
- `className`: A pointer to a constant character string representing the class name.

**Return Value:**
- Returns 1 if the object is an instance of the specified class, 0 otherwise.

## `Hlp_GetFirstObjectOfClass`

**Description:** This function retrieves the first object in the game world that is an instance of a specific class.

**Signature:**
```cpp
void* Hlp_GetFirstObjectOfClass(const char* className);
```

**Parameters:**
- `className`: A pointer to a constant character string representing the class name.

**Return Value:**
- Returns a void pointer to the first object of the specified class found in the game world, or `nullptr` if none is found.

## `Hlp_GetNextObjectOfClass`

**Description:** This function retrieves the next object in the game world that is an instance of a specific class.

**Signature:**
```cpp
void* Hlp_GetNextObjectOfClass(const char* className, void* prevObject);
```

**Parameters:**
- `className`: A pointer to a constant character string representing the class name.
- `prevObject`: A pointer to the previous object of the specified class.

**Return Value:**
- Returns a void pointer to the next object of the specified class found in the game world, or `nullptr` if none is found.

That completes the documentation for all the functions. Let me know if there's anything else I can help you with!