function xselect(_curVal, _max, _snd = false) {
	var curVal = _curVal + (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left));
	if (curVal != _curVal && _snd) audio_play_sound(_snd, 0, false);
	return wrap(curVal, _max);
}

function yselect(_curVal, _max, _snd = false) {
	static curVal = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	if (curVal != _curVal) audio_play_sound(_snd, 0, false);
	return wrap(curVal, _max);
}

