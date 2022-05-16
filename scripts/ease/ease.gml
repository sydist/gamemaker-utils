///	@func	ease(name, end_value, steps, curve_name)
/// @

function ease(_name, _to, _steps, _curve) {
	var _inst = instance_create_depth(0, 0, 0, obj_empty)

	_inst.to = _to;
	_inst.name = _name;
	_inst.caller = other;
	_inst.steps = _steps;
	_inst.channel = animcurve_get_channel(Curves, _curve);

	with (_inst) {
		timeline_index = timeline_add();

		var _i = 0;
		var _func = function() {	
			static timer = 0;
			timer += 1 / steps;
			
			var _pos = animcurve_channel_evaluate(channel, timer);
			var _val = variable_instance_get(caller, name);
			var _distance = to - _val;

			variable_instance_set(caller, name, _val + (_distance * _pos));
		}

		repeat(steps) {
			timeline_moment_add_script(timeline_index, _i, _func);
			_i++;
		}

		timeline_moment_add_script(timeline_index, _i, function() {
			timeline_delete(timeline_index);
			instance_destroy();
		});

		timeline_position = 0;
		timeline_running = true;
	}

}

