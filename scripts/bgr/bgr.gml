
///	@func	bgr(rgb)
///	@desc	Converts `rgb` input into bgr 
///			output (ex: 0xFF0000 -> 0x0000FF)
///	@param	rgb	{real}

function bgr(_rgb) 
{
	return (_rgb & 0xFF0000) >> 16 | (_rgb & 0xFF00) | (_rgb & 0xFF) << 16
}

