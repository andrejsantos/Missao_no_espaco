vspeed = 1
chance = random(100);


if (chance >= 90) //Vida
{
	sprite_index = spr_Powervida
	cor = c_lime	
}
else if (chance >= 80) //Tiro
{
	sprite_index = spr_Powertiro
	cor = c_red
}
else if (chance >= 45)//Escudo
{
	sprite_index = spr_Powerescudo
	cor = c_yellow
}
else//Velocidade
{
	sprite_index = spr_Powervelocidade
	cor = c_blue
}