draw_text(100,100,"time: " + string(obj_timeHelper.time_hour) + ":" + string(obj_timeHelper.time_minute));
draw_text(100,150,"gold: " + string(obj_mission_stats_parent.money));


for (var i = 0; i < instance_number(obj_worker); ++i;)
{
	var worker	= instance_find(obj_worker,i);
	if (worker.showing_worker_name == true)
	{
		draw_text(GetCameraOffsetX(worker.x),GetCameraOffsetY(worker.y),worker.worker_name);
	}
}
