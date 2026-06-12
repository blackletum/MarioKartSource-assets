$modelname "props/rocks/rock_02.mdl"
$model "body" "rock_02.smd"

$cdmaterials "models/props/rocks/"

$staticprop
$surfaceprop "default"
//$illumposition 6.424 0.000 100.878
$sequence idle "rock_02.smd" loop fps 30.00

$collisionmodel "rock_02.smd"
{
	mass $10
}	
