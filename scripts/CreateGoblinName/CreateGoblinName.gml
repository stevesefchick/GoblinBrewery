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
	array_push(gobbonamelist,"Zrek");
	array_push(gobbonamelist,"Mobin");
	array_push(gobbonamelist,"Puck");
	array_push(gobbonamelist,"Egg");
	array_push(gobbonamelist,"Jard");
	array_push(gobbonamelist,"Kugz");
	array_push(gobbonamelist,"Ick");
	array_push(gobbonamelist,"Skuzzy");
	array_push(gobbonamelist,"Nat");
	array_push(gobbonamelist,"Grizz");
	array_push(gobbonamelist,"Plum");
	array_push(gobbonamelist,"Grib");
	array_push(gobbonamelist,"Jex");
	array_push(gobbonamelist,"Srak");
	array_push(gobbonamelist,"Jann");
	array_push(gobbonamelist,"Rnon");
	
	return gobbonamelist[random_range(0,array_length(gobbonamelist))];
	
}

function GetGoblinLastName()
{
	var gobbolastnamelist=[];
	array_push(gobbolastnamelist,"Fritz");
	array_push(gobbolastnamelist,"Spunk");
	array_push(gobbolastnamelist,"Derr");
	array_push(gobbolastnamelist,"Hacket");
	array_push(gobbolastnamelist,"Garble");
	array_push(gobbolastnamelist,"Sporkle");
	array_push(gobbolastnamelist,"Mudluck");
	array_push(gobbolastnamelist,"Stynx");
	array_push(gobbolastnamelist,"Pringle");
	array_push(gobbolastnamelist,"Bruul");
	array_push(gobbolastnamelist,"Scubble");
	array_push(gobbolastnamelist,"Rex");
	array_push(gobbolastnamelist,"Bismo");
	
	return gobbolastnamelist[random_range(0,array_length(gobbolastnamelist))];
	
}
