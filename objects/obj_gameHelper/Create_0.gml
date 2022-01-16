/// @Game Helper scripts and global variables

//overall stats
//TODO: Move this over to a list or map
reputationLevel=0;
currentReputationPoints=0;
nextLevelReputationPoints=DetermineNextLevel(0);
//set up mission objective grid
//TODO: Move all the definition under the function like the ingredient grid
CreateMissionObjectiveDataGrid("mission 1","money","horse","it's time for horse",0,100,0,"locked");

//create ingredient properties
CreateIngredientPropertyGrid();
//create brew properties
CreateBrewBaseAttributeGrid();






//create flavor grids
//can delete
//CreateMaltFlavorGrid();

//test
//can delete
//DetermineMaltFlavorProfile(3,9);