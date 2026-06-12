$modelname "props/rocks/rock_01.mdl"
$model "body" "rock_01.smd"

$cdmaterials "models/props/rocks/"

$staticprop
$surfaceprop "default"
//$illumposition 6.424 0.000 100.878
$sequence idle "rock_01.smd" loop fps 30.00

$collisionmodel "rock_01.smd"
{
	mass $10
}	
