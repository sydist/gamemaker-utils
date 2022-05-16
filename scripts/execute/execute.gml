function execute(_func, _delay = 0, _last = true, _steps = 1, _spd = 1, _loop = false) {
	if (!timeline_exists(timeline_index)) 
		timeline_index = timeline_add();

	var _i = _delay;
	do {
		timeline_moment_add_script(timeline_index, _i, _func);
		_i++;
	}
	until(--_steps <= 0)
	
	timeline_position = 0;
	timeline_running = true;
	timeline_loop = _loop;
	timeline_speed = _spd;
	
	if (_last) {
		timeline_moment_add_script(timeline_index, _i, function() {
			timeline_delete(timeline_index);
			timeline_index = -1;
			timeline_speed = 1;
			timeline_running = false;
			timeline_position = 0;
			timeline_loop = false;
		});
	}
}

