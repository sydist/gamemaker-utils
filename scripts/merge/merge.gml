///	@func	merge(arrays...)
/// @desc	Merges arrays into one
/// @param	{array}	Up to 16 arrays to merge

function merge() 
{
	var _count = argument_count;
	var _arr = [];
	
	var i = 0;
	repeat(_count) 
	{
		array_copy(_arr, array_length(_arr), argument[i], 0, array_length(argument[i]));
		i++;
	}

	return _arr;
}