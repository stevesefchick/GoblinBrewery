function DrawWorkerAssignmentWindow(){
draw_set_font(fnt_lantern);

	for (var i = 0; i < instance_number(obj_worker); ++i;)
	{
		var worker	= instance_find(obj_worker,i);
		draw_text_scribble(0, 0 + (25 * i),"[c_white]"+worker.worker_name);
	}

}