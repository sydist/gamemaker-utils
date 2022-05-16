
///	@func	chance(perone)
///	@desc	Return true or false based on inputted chance
///	@param	perone	{real}	the chance from 0 to 1 (ex: 0.5 = 50%)

function chance(_x) {
	return _x > random(1);
}

