/// @description generate a name for a goblin
function CreateGoblinName(){

		var gobboname = GetGoblinFirstName() + " " + GetGoblinLastName();
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
	array_push(gobbonamelist,"Dud");
	array_push(gobbonamelist,"Nat");
	array_push(gobbonamelist,"Grizz");
	array_push(gobbonamelist,"Plum");
	array_push(gobbonamelist,"Grib");
	array_push(gobbonamelist,"Jex");
	array_push(gobbonamelist,"Srak");
	array_push(gobbonamelist,"Jann");
	array_push(gobbonamelist,"Rnon");
	array_push(gobbonamelist,"Jaz");
	array_push(gobbonamelist,"Grukkzus");
	array_push(gobbonamelist,"Blep");
	array_push(gobbonamelist,"Glegg");
	array_push(gobbonamelist,"Bro");
	array_push(gobbonamelist,"Crem");
	array_push(gobbonamelist,"Piss");
	array_push(gobbonamelist,"Gexx");
	array_push(gobbonamelist,"Grag");
	array_push(gobbonamelist,"Duck");
	array_push(gobbonamelist,"Bep");
	array_push(gobbonamelist,"Harold");
	array_push(gobbonamelist,"Icky");
	array_push(gobbonamelist,"Likk");
	array_push(gobbonamelist,"Spug");
	
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
	array_push(gobbolastnamelist,"Brimple");
	array_push(gobbolastnamelist,"Klikklak");
	array_push(gobbolastnamelist,"Bruul");
	array_push(gobbolastnamelist,"Scubble");
	array_push(gobbolastnamelist,"Rex");
	array_push(gobbolastnamelist,"Bismo");
	array_push(gobbolastnamelist,"Nklar");
	array_push(gobbolastnamelist,"Slhar");
	array_push(gobbolastnamelist,"Spitz");
	array_push(gobbolastnamelist,"Sprak");
	array_push(gobbolastnamelist,"Spek");
	array_push(gobbolastnamelist,"Bembo");
	array_push(gobbolastnamelist,"Rikrak");
	array_push(gobbolastnamelist,"Gribbus");
	array_push(gobbolastnamelist,"Hellass");
	array_push(gobbolastnamelist,"Blip");
	array_push(gobbolastnamelist,"Ack");
	array_push(gobbolastnamelist,"Snak");
	array_push(gobbolastnamelist,"Snek");
	array_push(gobbolastnamelist,"Frik");
	array_push(gobbolastnamelist,"Spuz");
	
	return gobbolastnamelist[random_range(0,array_length(gobbolastnamelist))];
	
}
