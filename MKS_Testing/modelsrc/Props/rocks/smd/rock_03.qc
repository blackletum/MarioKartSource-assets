$modelname "props/rocks/rock_03.mdl"
$model "body" "rock_03.smd"

$cdmaterials "models/props/rocks/"

$staticprop
$surfaceprop "default"
//$illumposition 6.424 0.000 100.878
$sequence idle "rock_03.smd" loop fps 30.00

$collisionmodel "rock_03.smd"
{
	mass $10
}	
