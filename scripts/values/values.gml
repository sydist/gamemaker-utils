
/// @func	values(object)
/// @desc	Returns an array of all the instance's
///			variable values
/// @param	object	{object}	The object to get the variable values from.

function values(_obj) 
{
	var _keys = keys(_obj);
	var _length = array_length(_keys);
	
	var _values = array_create(_length, 0);
	
	var _i = 0;
	repeat(_length) _values[_i] = variable_instance_get(_obj, _keys[_i++]);
	
	return _values;
}

