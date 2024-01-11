/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if image_index > 0 
{
	image_alpha -= .2
	image_index --;
}
else 
{
	instance_destroy();
}
//Reiniciando o alarme
alarm[0] = room_speed