function wrap(_x, _max) {
	if (_x >= 0 && _x <= _max) return _x;
	return (_x - (sign(_x) * (_max + 1)));
}

