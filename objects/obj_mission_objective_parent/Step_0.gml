/// @description Check for stat changes


function moneyChange(delta_value)
{
	objective_current_value+=delta_value;
	if (delta_value > objective_max_value)
	{
		objective_current_value=objective_max_value;
		this_objective_state = objective_state.completed;
	}
}
