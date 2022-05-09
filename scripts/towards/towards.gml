function towards(_from, _to, _spd) {
	var _pos = _from + _spd
	return (_pos >= _to) ? _to : _pos;
}

