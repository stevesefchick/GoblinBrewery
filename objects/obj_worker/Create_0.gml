/// @description create worker object

//enums
//Idle --> stand still
//Wandering --> wander in a random direction (will switch between Idle and Wandering)
//MoveTowardsTrash --> move in the direction of trash
//CleanupTrash --> clean up the trash on the ground
enum worker_state { Idle,Wandering,MoveTowardsTrash,CleanupTrash}

//Nothing --> No assignment, wanders around
//Cleanup --> MoveTowardsTrash, CleanupTrash, then idle
enum worker_assignment {Nothing, Cleanup}


//create worker details
worker_name=CreateGoblinName();

//state management
current_worker_state = worker_state.Idle;
current_worker_assignment=worker_assignment.Nothing;
showing_worker_name = false;

//movement variables
walk_movement_speed=2;
wander_destination=[0,0];

//attributes and timing variables
worker_time_to_cleanup = 120;

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
