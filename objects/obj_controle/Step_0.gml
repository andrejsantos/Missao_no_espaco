/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
gamepad_connect();

if(!instance_exists(obj_player1) && !gameover_seq)
{
	gameover_seq = layer_sequence_create("Sequencias", room_width/2, room_height/2, sq_game_over);

}

var reset = keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(global.gamepad_id, gp_face1)
if (reset = gameover_seq)
{
	 game_restart()
}




