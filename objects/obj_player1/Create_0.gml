/// @description Insert description here


velocidade = 5

level_tiro = 1

//Criando uma função tiro
atirando = function()
{
	var fire = keyboard_check_pressed(vk_space)	//Criando o objeto tiro
	
	if fire and level_tiro == 1
	{
		instance_create_layer(x, y - sprite_height/3, "Tiros", obj_Tiro_Player)	
	}
	
	 else if fire and level_tiro == 2 
	{
		var tiro_es = instance_create_layer(x - 43, y  - sprite_height/3, "Tiros", obj_tiro_02)	
		 tiro_es.hspeed = 6
		var tiro_dr = instance_create_layer(x + 43, y  - sprite_height/3, "Tiros", obj_tiro_02)
		tiro_dr.hspeed = -6
	}

}