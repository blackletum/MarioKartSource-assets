#include <sourcemod>

public OnMapStart()
{
	CreateTimer(1.0, Anime, _, TIMER_REPEAT|TIMER_FLAG_NO_MAPCHANGE);
}

public Action:Anime(Handle:Timer)
{
	PrintToServer("Hi");
	return Plugin_Continue;
}