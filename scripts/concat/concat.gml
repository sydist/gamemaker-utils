function concat(_arr, __arr) {
	var _length = array_length(_arr);
	var __length = array_length(__arr);
	var ___arr = array_create(_length + __length, 0);
	
	array_copy(___arr, 0, _arr, 0, _length);
	array_copy(___arr, _length, __arr, 0, __length);
	
	return ___arr;
}

