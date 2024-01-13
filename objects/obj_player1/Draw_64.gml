/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Repetindo o desenho na quantidade de vida que eu tenho
var mult = 0; // Multiplicando o espaço das navinhas 
var espaco = 55; //Espaço da GUI
repeat(vida)
{
	draw_sprite_ext(spr_player, image_index, 30 + espaco * mult, 40, .4, .4, 0, c_white, .8)
	mult ++;// Depois de desenhar aumente o multiplicador
}

repeat(qescudo)
{
	draw_sprite_ext(spr_escudo, 2, -135 + espaco * mult, 100, .4, .4, 0, c_white, .8)
	mult ++;// Depois de desenhar aumente o multiplicador
}







