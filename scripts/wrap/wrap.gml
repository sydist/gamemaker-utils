
/// @func	wrap(value, maximum)
///	@desc	Wraps integer overflow in range 
///			0 to `maximum`
///	@param	value	{real}	The value to wrap if it's overflowing
///	@param	maximum {real}	The maxmium `value` can go before wrapping

function wrap(_x, _max) 
{
	if (_x >= 0 && _x <= _max) return _x;
	return (_x - (sign(_x) * (_max + 1)));
}

