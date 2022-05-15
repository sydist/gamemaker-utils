function xselect(_curVal, _max, _snd = false) {
	var val = _curVal + (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left));
	if (val != _curVal && _snd) audio_play_sound(_snd, 0, false);
	return wrap(val, _max);
}

function yselect(_curVal, _max, _snd = false) {
	var val = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	if (val != _curVal && _snd) audio_play_sound(_snd, 0, false);
	return wrap(val, _max);
}

