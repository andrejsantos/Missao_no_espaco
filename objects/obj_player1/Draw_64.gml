/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Repetindo o desenho na quantidade de vida que eu tenho
var mult = 0; // Multiplicando o espaço das navinhas 
var espaco = 55; //Espaço da GUI


repeat(vida)
{
	draw_sprite_ext(spr_player, image_index, 30 + espaco * mult, 680, .4, .4, 0, c_white, .8)
	mult ++;// Depois de desenhar aumente o multiplicador
}
// Resetando o vaor do multiplicador
mult = 0
repeat(qescudo)
{
	draw_sprite_ext(spr_escudo, 2, 1135 + espaco * mult, 690, .4, .4, 0, c_aqua, .8)
	mult ++;// Depois de desenhar aumente o multiplicador
}






