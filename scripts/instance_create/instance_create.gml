function instance_create(_x, _y, _depth, _object, _argsStruct = {}) {
	with(instance_create_depth(_x, _y, _depth, obj_empty)) {
		args = _argsStruct;
		instance_change(_object, true);
		delete args;
	}
}

