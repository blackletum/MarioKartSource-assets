$modelname "karts\kart_model.mdl" 
$cdmaterials "models\karts\"
$model kart_model "kart_ref.smd" 
$surfaceprop "default" 
$collisionmodel "kart_ref.smd"

//------------------------------
//
// ATTACHMENTS
//
//------------------------------
$attachment "wheel_fl" "_wheel_FL" 0.00 0 0.00 rotate 0 0 0 
$attachment "wheel_fr" "_wheel_FR" 0.00 0 0.00 rotate 0 0 0 
$attachment "wheel_rr" "_wheel_RR" 0.00 0 0.00 rotate 0 0 0 
$attachment "wheel_rl" "_wheel_RL" 0.00 0 0.00 rotate 0 0 0 

$attachment "exaust_l" "_kart_exaust_L" 0.00 0 0.00 rotate 0 0 0 
$attachment "exaust_r" "_kart_exaust_R" 0.00 0 0.00 rotate 0 0 0 

$attachment "weapon_f" "_front_weapon" 0.00 0 0.00 rotate 0 0 0 
$attachment "weapon_r" "_back_weapon" 0.00 0 0.00 rotate 0 0 0 

$attachment "kart_root" "_kart_ground" 0.00 0 0.00 rotate 0 0 0 

$attachment "balloon" "_balloon_attachement" 0.00 0 0.00 rotate 0 0 0 

$bonemerge "_char_ass"

//------------------------------
//
// IDLE ANIMATION
//
//------------------------------ 

//idle animation
$animation a_idle_anim "kart_idle.smd" 

// This is the main sequence upon which everything else is based 
$sequence idle_anim a_idle_anim fps 30 {
	activity ACT_IDLE 1 
}

//------------------------------
//
// STEERING ANIMATION
//
//------------------------------

//poseparameter for steering animation
$poseparameter wheel_turn -45 45

//These are the two animations for the steering 
$animation a_wheel_turn_animL "kart_steer.smd" frame 0 0 subtract a_idle_anim 0
$animation a_wheel_turn_animR "kart_steer.smd" frame 2 2 subtract a_idle_anim 0

//steering animation sequence
$sequence wheel_turn_anim { 
	a_wheel_turn_animL
	a_wheel_turn_animR
	blend wheel_turn -45 45 
	delta 
	autoplay
} 

//------------------------------
//
// STEERINGWHEEL ADJUSTEMENT
// ANIMATION
//
//------------------------------

//poseparameter for steeringwheel adjustment animation
$poseparameter steering_wheel_adjust -1 1

//These are the two animations for the steeringwheel adjustment (low position, high position)
$animation a_steering_wheel_low "kart_steeringwheel_adjustment.smd" frame 0 0 subtract a_idle_anim 0
$animation a_steering_wheel_high "kart_steeringwheel_adjustment.smd" frame 2 2 subtract a_idle_anim 0

//steeringwheel adjustment animation sequence
$sequence steering_wheel_adjust_anim { 
	a_steering_wheel_low
	a_steering_wheel_high
	blend steering_wheel_adjust -1 1
	delta 
	autoplay
} 

//------------------------------
//
// SUSPENSION ANIMATION
//
//------------------------------

//poseparameter for Front Right Wheel Suspension
$poseparameter suspension_fr -1 1

//Only Front Right Wheel
$weightlist wheel_fr { "_wheel_FR" 1.0 }

$animation a_suspension_fr_low "kart_suspensions.smd" frame 0 0 subtract a_idle_anim 0 weightlist wheel_fr
$animation a_suspension_fr_high "kart_suspensions.smd" frame 2 2 subtract a_idle_anim 0 weightlist wheel_fr

$sequence suspension_fr_anim { 
	a_suspension_fr_low 
	a_suspension_fr_high 
	blend suspension_fr -1 1 
	weightlist wheel_fr 
	delta
	autoplay
}

//poseparameter for Front Left Wheel Suspension
$poseparameter suspension_fl -1 1

//Only Front Left Wheel
$weightlist wheel_fl { "_wheel_FL" 1.0 }

$animation a_suspension_fl_low "kart_suspensions.smd" frame 0 0 subtract a_idle_anim 0 weightlist wheel_fl
$animation a_suspension_fl_high "kart_suspensions.smd" frame 2 2 subtract a_idle_anim 0 weightlist wheel_fl

$sequence suspension_fl_anim { 
	a_suspension_fl_low 
	a_suspension_fl_high 
	blend suspension_fl -1 1 
	weightlist wheel_fl 
	delta
	autoplay
}

//poseparameter for Rear Right Wheel Suspension
$poseparameter suspension_rr -1 1

//Only Rear Right Wheel
$weightlist wheel_rr { "_wheel_RR" 1.0 }

$animation a_suspension_rr_low "kart_suspensions.smd" frame 0 0 subtract a_idle_anim 0 weightlist wheel_rr
$animation a_suspension_rr_high "kart_suspensions.smd" frame 2 2 subtract a_idle_anim 0 weightlist wheel_rr

$sequence suspension_rr_anim { 
	a_suspension_rr_low 
	a_suspension_rr_high 
	blend suspension_rr -1 1 
	weightlist wheel_rr 
	delta
	autoplay
}

//poseparameter for Rear Left Wheel Suspension
$poseparameter suspension_rl -1 1

//Only Rear Left Wheel
$weightlist wheel_rl { "_wheel_RL" 1.0 }

$animation a_suspension_rl_low "kart_suspensions.smd" frame 0 0 subtract a_idle_anim 0 weightlist wheel_rl
$animation a_suspension_rl_high "kart_suspensions.smd" frame 2 2 subtract a_idle_anim 0 weightlist wheel_rl

$sequence suspension_rl_anim { 
	a_suspension_rl_low 
	a_suspension_rl_high 
	blend suspension_rl -1 1 
	weightlist wheel_rl 
	delta
	autoplay
}

//------------------------------
//
// SPINNING ANIMATION
//
//------------------------------

//poseparameter for Front Right Wheel Spinning
$poseparameter spin_fr -1 1

$animation a_wheel_fr_spin0 "kart_spin.smd" frame 0 0 subtract a_idle_anim 0 weightlist wheel_fr
$animation a_wheel_fr_spin120 "kart_spin.smd" frame 3 3 subtract a_idle_anim 0 weightlist wheel_fr
$animation a_wheel_fr_spin240 "kart_spin.smd" frame 6 6 subtract a_idle_anim 0 weightlist wheel_fr

$sequence spin_fr { 
	a_wheel_fr_spin0 
	a_wheel_fr_spin120 
	a_wheel_fr_spin240 
	a_wheel_fr_spin0 
	blendwidth 4 
	blend spin_fr -1 1
	weightlist wheel_fr 
	delta 
	autoplay
} 

//poseparameter for Front Left Wheel Spinning
$poseparameter spin_fl -1 1

$animation a_wheel_fl_spin0 "kart_spin.smd" frame 0 0 subtract a_idle_anim 0 weightlist wheel_fl
$animation a_wheel_fl_spin120 "kart_spin.smd" frame 3 3 subtract a_idle_anim 0 weightlist wheel_fl
$animation a_wheel_fl_spin240 "kart_spin.smd" frame 6 6 subtract a_idle_anim 0 weightlist wheel_fl

$sequence spin_fl { 
	a_wheel_fl_spin0 
	a_wheel_fl_spin120 
	a_wheel_fl_spin240 
	a_wheel_fl_spin0 
	blendwidth 4 
	blend spin_fl -1 1
	weightlist wheel_fl 
	delta 
	autoplay
} 

//poseparameter for Rear Right Wheel Spinning
$poseparameter spin_rr -1 1

$animation a_wheel_rr_spin0 "kart_spin.smd" frame 0 0 subtract a_idle_anim 0 weightlist wheel_rr
$animation a_wheel_rr_spin120 "kart_spin.smd" frame 3 3 subtract a_idle_anim 0 weightlist wheel_rr
$animation a_wheel_rr_spin240 "kart_spin.smd" frame 6 6 subtract a_idle_anim 0 weightlist wheel_rr

$sequence spin_rr { 
	a_wheel_rr_spin0 
	a_wheel_rr_spin120 
	a_wheel_rr_spin240 
	a_wheel_rr_spin0 
	blendwidth 4 
	blend spin_rr -1 1
	weightlist wheel_rr 
	delta 
	autoplay
} 

//poseparameter for Rear Left Wheel Spinning
$poseparameter spin_rl -1 1

$animation a_wheel_rl_spin0 "kart_spin.smd" frame 0 0 subtract a_idle_anim 0 weightlist wheel_rl
$animation a_wheel_rl_spin120 "kart_spin.smd" frame 3 3 subtract a_idle_anim 0 weightlist wheel_rl
$animation a_wheel_rl_spin240 "kart_spin.smd" frame 6 6 subtract a_idle_anim 0 weightlist wheel_rl

$sequence spin_rl { 
	a_wheel_rl_spin0 
	a_wheel_rl_spin120 
	a_wheel_rl_spin240 
	a_wheel_rl_spin0 
	blendwidth 4 
	blend spin_rl -1 1
	weightlist wheel_rl 
	delta 
	autoplay
} 

//------------------------------
//
// BANANA HIT ANIMATION
//
//------------------------------

//banana hit animation
$animation a_bananahit_anim "kart_bananahit.smd" 

// This is the banana hit sequence
$sequence bananahit_anim a_bananahit_anim fps 30 

//------------------------------
//
// TUMBLE ANIMATION
//
//------------------------------

//Tumble North animation
$animation a_tumble_N_anim "kart_tumbleN.smd" 

// This is the Tumble North sequence 
$sequence tumble_N a_tumble_N_anim fps 30 {
	activity ACT_TUMBLE_N 1 
}

//Tumble East animation
$animation a_tumble_E_anim "kart_tumbleE.smd" 

// This is the Tumble East sequence 
$sequence tumble_E a_tumble_E_anim fps 30 {
	activity ACT_TUMBLE_E 1 
}

//Tumble West animation
$animation a_tumble_W_anim "kart_tumbleW.smd" 

// This is the Tumble West sequence 
$sequence tumble_W a_tumble_W_anim fps 30 {
	activity ACT_TUMBLE_W 1 
}

//Tumble South animation
$animation a_tumble_S_anim "kart_tumbleS.smd" 

// This is the Tumble South sequence 
$sequence tumble_S a_tumble_S_anim fps 30 {
	activity ACT_TUMBLE_S 1 
}