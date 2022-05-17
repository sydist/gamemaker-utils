///	@func	tri(frames)
///	@desc	Returns a triangular wave
///	@param	frames	{real}	How many frames for one wave

function tri(_frames) {
	return abs(current_time / ((1000 / FPS) * _frames) % 2 - 1)
}