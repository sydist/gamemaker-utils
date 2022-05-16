
/// @func	towards(value, destination, speed)
/// @desc	Moves `value` to `destination`
///			with a speed of `speed` but never overshoots
/// @param	value		{real}	The value to move to `destination`
/// @param	destination	{real}	The destination to move `value` to 
/// @param	speed		{real}	The rate at which to move `value` to `destination`

function towards(_from, _to, _spd) {
	var _pos = _from + _spd
	return (_pos >= _to) ? _to : _pos;
}

