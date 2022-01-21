/// @description goblin step event

if (current_worker_state == worker_state.Idle)
{
	sprite_index=spr_goblin_idle;	
}
else if (current_worker_state == worker_state.Wandering)
{
	sprite_index = spr_goblin_move;
	
   if mp_linear_step(wander_destination[0], wander_destination[1], walk_movement_speed,0)
   {
		current_worker_state = worker_state.Idle;
   }
}

depth = -y;

