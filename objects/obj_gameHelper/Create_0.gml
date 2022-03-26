/// @Game Helper scripts and global variables

//debug flag
debugMode=true;

//flags and checks
isWindowOpen=false;

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

//fonts
//font_add(fnt_lantern,16,false,false,32,128);

//test
DetermineResearchResult(1,1,1);