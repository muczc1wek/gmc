// Returns the distance beetwen the npc and the source of the last played sound
//
// @param npc npc to which get the distance
// @return Returns the distance beetwen the npc and the source of the last played sound (in cm).
func int Snd_GetDistToSource(var c_npc npc) {};

// Check whether the source of the last sound was item and sets `item` to this item 
//

func int Snd_IsSourceItem(var c_npc self) {};
func int Snd_IsSourceNpc(var c_npc self) {};
func void Snd_Play(var string s0) {};
func void Snd_Play3D(var c_npc n0, var string s1) {};