vspeed = 1
chance = random(100);


if (chance >= 90) //Vida
{
	cor = c_lime
}
else if (chance >= 80) //Tiro
{
	cor = c_red
}
else if (chance >= 45)//Escudo
{
	cor = c_yellow
}
else//Velocidade
{
	cor = c_blue
}