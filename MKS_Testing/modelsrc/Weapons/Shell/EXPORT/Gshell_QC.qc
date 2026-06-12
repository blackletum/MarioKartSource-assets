$modelname "weapons\shells\shell.mdl"
$cdmaterials "models\weapons\shells\"

$texturegroup "shells"
{
	{ "gshell" }
	{ "rshell" }
}

$scale  1

$body studio "shell"

$sequence idle "shell_idle" fps 1

$collisionmodel "shell_collision"

$attachment "World" "Shell_world" 0.00 0.00 0.00 rotate 0 0 0
$attachment "Root" "Shell_root" 0.00 0.00 0.00 rotate 0 0 0





