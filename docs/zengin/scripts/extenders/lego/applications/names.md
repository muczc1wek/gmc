---
title: Names
description: LeGo package for changing NPCs display name during the game
---
# Names

!!! info inline end
    **Dependencies:**<br/>
    - [Talents](../tools/talents.md)<br/>
    **Implementation:**<br/>
    [:material-github: Names.d on GitHub](https://github.com/Lehona/LeGo/blob/dev/Names.d)

Allows the user to change NPC name e.g. after he shows up.

## Initialization
N/A

## Functions

### `SetName`
!!! function "`SetName`"
    Should be set in InitGlobal().
    ```dae
    func void SetName(var C_NPC npc, var string name)
    ```
    **Parameters**

    - `#!dae var C_NPC npc`  
        The NPC to be named
    - `#!dae var string name`  
        The name of the NPC

### `ShowName`
!!! function "`ShowName`"
    Permanently displays the name set by `SetName` function above the npc.
    ```dae
    func void ShowName(var C_NPC npc)
    ```
    **Parameters**

    - `#!dae var C_NPC npc`  
        The NPC whose name should be shown

## Examples

### Show the name of an NPC later
```dae
instance PAL_100_Friend(C_NPC)
{
    name = "Paladin";

    // [...]
};

func void Init_Global()
{
    SetName(PAL_100_Friend, "Arto");
};
```
At the start of the game, the name "Paladin" is displayed above `PAL_100_Friend`.

If `ShowName(PAL_100_Friend);` is used during a dialogue, the name "Arto" is permanently visible above the npc.
