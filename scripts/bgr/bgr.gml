function bgr(_rgb) {
	return (_rgb & 0xFF0000) >> 16 | (_rgb & 0xFF00) | (_rgb & 0xFF) << 16
}

