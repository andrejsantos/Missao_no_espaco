/// @description Insert description here


velocidade = 5

//Criando uma função tiro
atirando = function(){
	var fire = keyboard_check_pressed(vk_space)//Tiro
	
	if fire {
	//Criando o objeto tiro
	instance_create_layer(x, y - sprite_height/3, "Tiros", obj_Tiro_Player)
	
	}

}