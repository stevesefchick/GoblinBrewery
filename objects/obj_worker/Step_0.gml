/// @description goblin step event


if (keyboard_check(vk_left)){
	sprite_index = spr_goblin_move;
	image_xscale=-1;
}
else if (keyboard_check(vk_right)){
	sprite_index = spr_goblin_move;
	image_xscale=1;
}
else if (keyboard_check(vk_down)){
	sprite_index = spr_goblin_move;
}
else if (keyboard_check(vk_up)){
	sprite_index = spr_goblin_move;
}
else {
	sprite_index=spr_goblin_idle;	
}