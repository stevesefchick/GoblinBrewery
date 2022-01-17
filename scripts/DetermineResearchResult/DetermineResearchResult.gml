///@description determines the results of research using malts or spices
function DetermineResearchResult(malt,spice,worker_skill_level){

	//calculate total value
	//var totalbitterflavor=malt.bitterflavor+spice.bitterflavor;
	//var totalbreadflavor=malt.breadflavor+spice.breadflavor;
	var totalbitterflavor=1;
	var totalbreadflavor=1;

	//return list of eligible beers based on total value
	var possible_brews=FindEligibleRecipesFromBrewList(totalbitterflavor,totalbreadflavor);
	
	//return a random possible brew
	return possible_brews[random_range(0,array_length(possible_brews)-1)];
}
	
	
function FindEligibleRecipesFromBrewList(bitter,bread)
{
	var eligible_list=[];
	
	//iterate through full list
	for (var y_counter=0; y_counter < ds_grid_height(ds_brew_base_attributes);++y_counter)
	{
		if (IsBrewBitterValueInRange(y_counter,bitter) == true &&
		IsBrewBreadValueInRange(y_counter,bread) == true)
		{
			array_push(eligible_list,GetBrewName(y_counter));
			show_debug_message(GetBrewName(y_counter) + " is eligible");
		}
		
	}
	
}