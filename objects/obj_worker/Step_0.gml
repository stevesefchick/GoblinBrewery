/// @description goblin step event

if (current_worker_state == worker_state.Idle)
{
	sprite_index=spr_goblin_idle;	
}
else if (current_worker_state == worker_state.Wandering)
{
	sprite_index = spr_goblin_move;
	
	
	//movement
   if mp_linear_step(wander_destination[0], wander_destination[1], walk_movement_speed,0)
   {
		current_worker_state = worker_state.Idle;
   }
   //check for collisions
	if (place_meeting(x,y,obj_collision))
	{
		//move back to previous x,y and change state to idle
		x = xprevious;
		y=yprevious;
		current_worker_state=worker_state.Idle;
	}
}

depth = -y;

