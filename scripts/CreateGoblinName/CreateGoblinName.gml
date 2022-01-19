/// @description generate a name for a goblin
function CreateGoblinName(){

		var gobboname = GetGoblinFirstName() + " " + GetGoblinLastName();
		show_debug_message(gobboname);
		return gobboname;

}

function GetGoblinFirstName()
{
	var gobbonamelist=[];
	array_push(gobbonamelist,"Urk");
	array_push(gobbonamelist,"Zress");
	array_push(gobbonamelist,"Gek");
	array_push(gobbonamelist,"Preez");
	array_push(gobbonamelist,"Deez");
	
	return gobbonamelist[random_range(0,array_length(gobbonamelist))];
	
}

function GetGoblinLastName()
{
	var gobbolastnamelist=[];
	array_push(gobbolastnamelist,"Fritz");
	array_push(gobbolastnamelist,"Spunk");
	array_push(gobbolastnamelist,"Derr");
	
	return gobbolastnamelist[random_range(0,array_length(gobbolastnamelist))];
	
}
