function ease(_val, _end, _frames, _curve) {
	curve = _curve;
	frames = _frames;
	val = _val;
	goal = _end;
	
	var _func = function() {
		static channel = animcurve_get_channel(Curves, curve);
		var _start = variable_instance_get(id, val);
		var _distance = goal - _start;
		
		static timer = 0;
		timer += 1 / frames;
		
		var _pos = animcurve_channel_evaluate(channel, timer);
		variable_instance_set(id, val, _start + (_distance * _pos))
	};
	
	var _endFunc = function() {
		delete curve;
		delete frames;
		delete val;
		delete goal;
	};

	execute(_func, 0, false, _frames);
	execute(_endFunc, 1, true);
}
