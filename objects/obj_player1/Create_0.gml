 /// @description Insert description here


velocidade = 5;

espera_tiro = room_speed;

level_tiro = 1;


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
		tiro2()
	}
	
	else if fire and level_tiro == 3 
	{
		tiro2()
		instance_create_layer(x, y - sprite_height/3, "Tiros", obj_Tiro_Player)	
	}
	
	else if fire and level_tiro == 4
	{
		tiro4()
	}
	
	else if fire and level_tiro == 5
	{
		tiro2()
		tiro4()
	}

}

tiro2 = function()
{
	var tiro_es = instance_create_layer(x - 43, y  - sprite_height/3, "Tiros", obj_tiro_02)	
	tiro_es.hspeed = 5
	var tiro_dr = instance_create_layer(x + 43, y  - sprite_height/3, "Tiros", obj_tiro_02)
	tiro_dr.hspeed = - 5
}

tiro4 = function() 
{
	var direcao = 75
	repeat (3)
	{
		var meu_tiro = instance_create_layer(x, y - sprite_height/3, "Tiros", obj_Tiro_Player) // Tiro comum
		meu_tiro.direction = direcao // Defenino a direção do tiro
		meu_tiro.image_angle = meu_tiro.direction - 90 //Fazendo o tiro olhar na direção certa
		direcao += 15 // Almentando a direção em 15
	}
	
	//Meu jeito de resolver..
	/*instance_create_layer(x, y - sprite_height/3, "Tiros", obj_Tiro_Player)
	var tiro4_dr = instance_create_layer(x, y - sprite_height/3, "Tiros", obj_Tiro_Player)	
	tiro4_dr.hspeed = 4
	tiro4_dr.image_angle = direction - 30
	var tiro4_es = instance_create_layer(x, y - sprite_height/3, "Tiros", obj_Tiro_Player)
	tiro4_es.hspeed = - 4
	tiro4_es.image_angle = direction + 30*/
}

///@method level_up(chance)
level_up = function(_chance)
{
	if (_chance >= 90)
	{
		if (level_tiro < 5)
		{
			level_tiro ++;
			show_debug_message("TIRO NOVO")
		}
	}
	else if (_chance >= 45)
	{
		if (espera_tiro < 20)
		{
			espera_tiro *= 0.9;
			show_debug_message("ESPERA TIRO")
		}
	}
	else
	{
		if (velocidade < 10)
		{
			velocidade += .5;
			show_debug_message("MODO TURBO")
		}
	}
}
