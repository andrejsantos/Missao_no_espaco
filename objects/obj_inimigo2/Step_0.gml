/// @description Insert description here
// You can write your code in this editor

// Herdando o evendo do "pai"
event_inherited();


// Checando se eu já passei do 1/3 da tela
if y > room_height / 3{
	

	//Checando o lado da room que ele está
	if x <= 910{
		show_debug_message("Estou na esquerda")
		hspeed = -3
	}
	
	else{
		show_debug_message("Estou na direita")
		hspeed = 3
	}
}