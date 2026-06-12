each folder must follow this structure

in the root 
	texture files : tga 
	texture files : 1 psd if available 
	model file : max file with the model in "t" pose with NO bones NOR animation

in the export folder
	obj file
	mat file
	fbx file
	each  with the model in "t" pose with NO bones NOR animation

in the riged folder
	a max file with the model in "t" pose WITH bones, SKIN moifier applied BUT NO animation

in the preview folder
	a jpg file showing the actual aspect of the model (a quick screenshot of the 3dsmax scene or a quick render for example)

in the animation folder
	1 max file called : "charactername_animation_start.max" with the model in "t" pose WITH bones (with biped if possible) , SKIN moifier applied BUT NO animation PLUS the kart model
	several max files with the animation
	1 max file called "charactername_animation_finished.max " with all the animation in this one file