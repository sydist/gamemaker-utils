function execute(_func, _delay = 0, _last = false, _steps = 1, _spd = 1, _loop = false) {
	if (!timeline_exists(timeline_index)) timeline_index = timeline_add();
	
	timeline_moment_add_script(timeline_index, timeline_max_moment(timeline_index) + _delay, _func);
	repeat(_steps - 1) timeline_moment_add_script(timeline_index, timeline_max_moment(timeline_index) + 1, _func);
	
	timeline_position = 0;
	timeline_running = true;
	timeline_loop = _loop;
	timeline_speed = _spd;
	
	if (_last) timeline_moment_add_script(timeline_index, timeline_max_moment(timeline_index) + 1, function() {
		timeline_delete(timeline_index);
		timeline_index = -1;
		timeline_speed = 1;
		timeline_running = false;
		timeline_position = 0;
		timeline_loop = false;
	});
}

