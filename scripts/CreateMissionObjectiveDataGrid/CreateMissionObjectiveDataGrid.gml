///@description Creates the data grid for missions
///@arg missionlevel
///@arg missiontype
///@arg missiontitle
///@arg missionsubtitle
///@arg missionminvalue
///@arg missionmaxvalue
///@arg missioncurrentvalue
///@arg missionstate
function CreateMissionObjectiveDataGrid(mission_name,mission_type,mission_title,mission_subtitle,mission_minvalue,mission_maxvalue,mission_currentvalue,mission_state){

	var argNum = argument_count;
	
	ds_mission_objectives = ds_grid_create(argNum,1);
	
	var i = 0; repeat(argNum) {
		show_debug_message(argument[i]);
		ds_mission_objectives[# i,0]=argument[i];
		i+=1;
	}
	
	show_debug_message("width:" + string(ds_grid_width(ds_mission_objectives)));
	show_debug_message("height:" + string(ds_grid_height(ds_mission_objectives)));
	show_debug_message("Mission Objective Data Grid Created!");
}