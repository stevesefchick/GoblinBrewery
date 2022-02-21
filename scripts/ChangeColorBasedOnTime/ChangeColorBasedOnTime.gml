function ChangeColorBasedOnTime(){
	var increment = 0.001;
	var redcolor=0;
	var bluecolor=0;
	var greencolor=0;
	
	if (time_hour >=0 && time_hour < 4)
	{
		redcolor=0.2;
		bluecolor=0.9;
		greencolor=0.5;
	}
	else if (time_hour >=4 && time_hour < 5)
	{
		redcolor=0.6;	
		bluecolor=0.5;
		greencolor=0.7;
	}
	else if (time_hour >=5 && time_hour < 6)
	{
		redcolor=0.9;	
		bluecolor=0.4;
		greencolor=0.7;
	}
	else if (time_hour >=6 && time_hour < 12)
	{
		redcolor=1.0;	
		bluecolor=0.85;
		greencolor=0.9;
	}
	else if (time_hour >=12 && time_hour < 17)
	{
		redcolor=1.0;	
		bluecolor=1.0;
		greencolor=1.0;
	}
	else if (time_hour >=17 && time_hour < 18)
	{
		redcolor=0.9;	
		bluecolor=0.4;
		greencolor=0.6;
	}
	else if (time_hour >=18 && time_hour <= 23)
	{
		redcolor=0.4;	
		bluecolor=0.9;
		greencolor=0.7;
	}
	
	
	
	//red
	if (time_of_day_color[0] > redcolor)
	{
		time_of_day_color[0] -= increment;
	}	
	else if (time_of_day_color[0] < redcolor)
	{
		time_of_day_color[0] += increment;
	}
	
	//green
	if (time_of_day_color[1] > greencolor)
	{
		time_of_day_color[1] -= increment;
	}	
	else if (time_of_day_color[1] < greencolor)
	{
		time_of_day_color[1] += increment;
	}
	
	//blue
	if (time_of_day_color[2] > bluecolor)
	{
		time_of_day_color[2] -= increment;
	}	
	else if (time_of_day_color[2] < bluecolor)
	{
		time_of_day_color[2] += increment;
	}
}