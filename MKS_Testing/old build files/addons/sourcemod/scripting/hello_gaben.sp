/* Hello Gaben */

#include <sourcemod>
//#include <mks>


public Plugin:myinfo = {
	name = "Hello Gaben",
	author = "AlliedModders, LLC",
	description = "Hi",
	version = "1.0",
	url = "http://www.sourcemod.net/"
};

public OnPluginStart() 
{
	
	RegServerCmd("test_command", Command_Test)
}
 
public Action:Command_Test(args)
{
	
new ptime = GetSysTickCount();
new i, Float:num;
for(i=1;i<=10000000;i++)
	num = Sine(float(i) * 200.3) * 3.32;
	
new systime = GetSysTickCount() - ptime;

new Float:flTime = float(systime) / 1000.0;
PrintToServer("%f", flTime );

	//PlayerSpawn(0);
}