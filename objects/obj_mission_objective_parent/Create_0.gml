/// @description creator for parent objective objects

//constructor info used for objectives
objective_title="";
objective_subtitle="";
objective_min_value=0;
objective_max_value=0;
objective_current_value=0;

enum objective_type{
	craft,
	makemoney
}

enum objective_state{
	locked,
	unlocked,
	completed
}

this_objective_type = objective_type.makemoney;
this_objective_state = objective_state.locked;