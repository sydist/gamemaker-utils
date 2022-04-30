function concat(_arr, __arr) {
	var _length = array_length(__arr);
	var i = 0;
	repeat(_length) {
		_arr[array_length(_arr)] = __arr[i];
		i++;
	}
	
	return _arr;
}

