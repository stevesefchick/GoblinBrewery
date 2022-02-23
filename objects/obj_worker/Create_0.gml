/// @description create worker object

//enums
enum worker_state { Idle,Wandering}

//create worker details
worker_name=CreateGoblinName();

//state management
current_worker_state = worker_state.Idle;
showing_worker_name = false;

//movement variables
walk_movement_speed=2;
wander_destination=[0,0];

//shift details
worker_start_hour=10;
worker_end_hour=20;

//announce final worker stats
show_debug_message(worker_name + " is here!");


//shader stuff
uniform_handle = shader_get_uniform(outlineShader,"texture_Pixel");
border_color = ChangeBorderColorToBlack();
border_color_uniform_handle = shader_get_uniform(outlineShader,"border_Color");

//set alarm for state changes
alarm[0] = room_speed * random_range(3,5);
