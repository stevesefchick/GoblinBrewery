/// @description create worker object

//enums
enum worker_state { Idle,Wandering}

//create worker details
worker_name=CreateGoblinName();

//state management
current_worker_state = worker_state.Idle;

//movement variables
walk_movement_speed=2;
run_movement_speed=3;
wander_destination=[0,0];

//set alarm for state changes
alarm[0] = room_speed * random_range(3,5);
