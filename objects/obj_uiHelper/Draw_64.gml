draw_set_font(fnt_lantern);
draw_text_scribble(100, 100, "[c_white]"+"time: " + string(obj_timeHelper.time_hour_for_ui) + ":" + string(obj_timeHelper.time_minute_for_ui));
draw_text_scribble(100, 150, "[c_white]"+"gold: [c_yellow]" + string(obj_mission_stats_parent.money));


for (var i = 0; i < instance_number(obj_worker); ++i;)
{
	var worker	= instance_find(obj_worker,i);
	if (worker.showing_worker_name == true)
	{
		draw_text_scribble(GetCameraOffsetX(worker.x,-50),GetCameraOffsetY(worker.y,-100),"[wheel]"+worker.worker_name);
		draw_text_scribble(10, 10, "[c_red][fa_left]"+worker.worker_name);
	}
}
