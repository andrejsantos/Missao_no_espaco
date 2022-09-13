/// @description Insert description here
// You can write your code in this editor

// Herdando o evendo do "pai"
event_inherited();


// Checando se eu já passei do 1/3 da tela
if y > room_height / 3 && movimento == true{
	

	//Checando o lado da room que ele está
	if x >= room_width/2{
		show_debug_message("Estou na esquerda")
		hspeed = -5
		//Avisando que não pode mais se mover
		movimento = false
	}
	
	else{
		show_debug_message("Estou na direita")
		hspeed = 5
		//Avisando que não pode mais se mover
		movimento = false
	}
}