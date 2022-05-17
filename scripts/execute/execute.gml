
///@func	execute(function, delay, lastMoment?, steps, speed, loop?)
///@desc	Uses timelines to execute `function` 
///			after `delay` and repeats it `steps` 
///			times, executing `speed` steps at a time.
///@param	function		{function}		The function to execute
///@param	delay			{int64}			The steps to wait before executing the function
///@param	lastMoment?		{boolean}		Delete the timeline at the end
///@param	steps			{int64}			How many steps to repeat the function for
///@param	speed			{int64}			How many steps are executed at once
///@param	loop			{boolean}		Wheather or not to loop the function

function execute(_func, _delay = 0, _last = true, _steps = 1, _spd = 1, _loop = false) 
{
	if (!timeline_exists(timeline_index)) 
		timeline_index = timeline_add();

	var _i = _delay;
	do timeline_moment_add_script(timeline_index, ++_i, _func);
	until(--_steps <= 0)
	
	timeline_position = 0;
	timeline_running = true;
	timeline_loop = _loop;
	timeline_speed = _spd;
	
	if (_last) 
	{
		timeline_moment_add_script(timeline_index, _i, function() 
		{
			timeline_delete(timeline_index);
			timeline_index = -1;
			timeline_speed = 1;
			timeline_running = false;
			timeline_position = 0;
			timeline_loop = false;
		});
	}
}

