
/// @func	keys(object)
/// @desc	Returns an array of all the instance's
///			variable names
/// @param	object	{object}	The object to get the variable names from.

function keys(_obj) 
{
	return variable_instance_get_names(_obj);
}

