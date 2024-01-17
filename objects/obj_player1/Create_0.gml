 /// @description Insert description here
//Sistema de controle (Joystick)

vida = 3;

velocidade = 5;

qescudo = 3;

level_tiro = 1;

//Criando o escudo
escudo = function()
{
	var cri_escudo = keyboard_check_pressed(ord("E")) or gamepad_button_check_pressed(global.gamepad_id, gp_face3)
	
	if (cri_escudo and qescudo > 0)
	{
		qescudo --; // Gastando o escudo
		instance_create_layer(x, y,"Escudo", obj_escudo)// Criando o escudo
	}
}

//Criando uma função tiro
atirando = function()
{
	var fire = keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(global.gamepad_id, gp_face1) 	//Criando o objeto tiro
	
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
Power_up = function(_chance)
{
	if (_chance >= 90)
	{
		if (vida < 3)
		{
			vida ++;
		}
	}
	else if (_chance >= 80)
	{
		if (level_tiro < 5)
		{
			level_tiro ++;
		}
	}	
	else if (_chance >= 45)
	{
		if (qescudo < 3)
		{
			qescudo ++;
		}
	}
	else
	{
		if (velocidade < 10)
		{
			velocidade += .5;
		}
	}
}

///@method perde_vida();
perde_vida = function()
{
	vida--;
	Screenshake(5)
 
 if vida = 0
 {
	instance_destroy()
	Screenshake(15)
 }
}