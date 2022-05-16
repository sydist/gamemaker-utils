
///@func	instance_create(x, y, depth, object, args = {})
///@desc	Same as instance_create_depth, but has
///			an additional parameter for args that
///			can be accessed in the create event

///@param	x		{real}		The horizontal position to create at
///@param	y		{real}		The vertical position to create at
///@param	depth	{int64}		The depth to create at
///@param	object	{object}	The object to create
///@param	args	{struct}	The args to pass in the create event


function instance_create(_x, _y, _depth, _object, _args = {}) {
	var _inst = instance_create_depth(_x, _y, _depth, obj_empty);
	with(_inst) {
		args = _args;
		instance_change(_object, true);
		delete args;
	}
	return _inst;
}

