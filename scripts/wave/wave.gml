function wave(_curve, _frames) {
	return animcurve_channel_evaluate(animcurve_get_channel(Curves, _curve), tri(_frames))
}