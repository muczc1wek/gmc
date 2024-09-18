---
title: Snd functions
---
# Snd functions
Functions related to sound.

## `Snd_GetDistToSource`
!!! function "`Snd_GetDistToSource`"
	Returns the distance beetwen the npc and the source of the last played sound
	```dae
	func int Snd_GetDistToSource(var c_npc npc)  {};
	```

	**Parameters**  

	- `#!dae var c_npc npc`   
        NPC to which get the distance

	**Return value**  
	Returns the distance beetwen the npc and the source of the last played sound (in cm).

## `Snd_IsSourceItem`
!!! function "`Snd_IsSourceItem`"
	Check whether the source of the last sound was item and sets `var C_ITEM item` to this item
	```dae
	func int Snd_IsSourceItem(var c_npc npc)  {};
	```

	**Parameters**  

	- `#!dae var c_npc npc`   
        NPC to which check the source

	**Return value**  
	Returns 1 if the source of the last sound was item, 0 otherwise.

## `Snd_IsSourceNpc`
!!! function "`Snd_IsSourceNpc`"
	Check whether the source of the last sound was npc and sets `var C_NPC other` to this npc
	```dae
	func int Snd_IsSourceNpc(var c_npc npc)  {};
	```

	**Parameters**  

	- `#!dae var c_npc npc`   
        NPC to which check the source

	**Return value**  
	Returns 1 if the source of the last sound was npc, 0 otherwise.

## `Snd_Play`
!!! function "`Snd_Play`"
	Plays a sound
	```dae
	func void Snd_Play(var string sndName)  {};
	```

	**Parameters**  

	- `#!dae var string sndName`   
        C_SFX instance name

## `Snd_Play3D`
!!! function "`Snd_Play3D`"
	Plays a sound at the position of the npc
	```dae
	func void Snd_Play3D(var c_npc npc, var string sndName)  {};
	```

	**Parameters**  

	- `#!dae var c_npc npc`   
        NPC at which position play the sound
	- `#!dae var string sndName`   
        C_SFX instance name

## Externals with docu comments

```dae
/// Returns the distance beetwen the npc and the source of the last played sound
///
/// @param npc NPC to which get the distance
/// @return Returns the distance beetwen the npc and the source of the last played sound (in cm).
func int Snd_GetDistToSource(var c_npc npc) {};

/// Check whether the source of the last sound was item and sets `var C_ITEM item` to this item 
///
/// @param npc NPC to which check the source
/// @return Returns 1 if the source of the last sound was item, 0 otherwise.
func int Snd_IsSourceItem(var c_npc npc) {};

/// Check whether the source of the last sound was npc and sets `var C_NPC other` to this npc
///
/// @param npc NPC to which check the source
/// @return Returns 1 if the source of the last sound was npc, 0 otherwise.
func int Snd_IsSourceNpc(var c_npc npc) {};

/// Plays a sound
///
/// @param sndName C_SFX instance name
func void Snd_Play(var string sndName) {};

/// Plays a sound at the position of the npc
///
/// @param npc NPC at which position play the sound
/// @param sndName C_SFX instance name   
func void Snd_Play3D(var c_npc npc, var string sndName) {};
```