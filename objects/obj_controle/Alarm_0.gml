/// @description Criando inimigos
// You can write your code in this editor


var xdoinimigo = irandom_range(40, 1870) //Deixando o X aleatorio
var ydoinimigo = random_range(-100, -1500)//Deixando o Y aleatorio

var inimigo = obj_inimigo1//Criando a variavel inimigo um

var chance = random_range(2, level)//Criando a forma aleatoria 



if chance >= 2{// Criando inimigo dois de forma aleatoria
	inimigo = obj_inimigo2
}



instance_create_layer(xdoinimigo, ydoinimigo, "inimigos", inimigo)//Criando inimigos




//Reiniciando o alarme
alarm[0] = room_speed * irandom_range(60, 120)