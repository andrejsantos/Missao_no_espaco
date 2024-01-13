/// @description Iniciando

alarm[0] = room_speed

//Sistema de vida
vida = 3

//Sistema de escudo
escudo = 0

//Iniciando o sistema de pontos
pontos = 0

//Iniciando sistemas de level
level = 1

//Proximo level
Plvl = 100

//Checando colisão 
if place_meeting(x, y, obj_inimigo1) 
{
		instance_destroy(id, false)
}

//Criando um metodo para ganhar pontos
///@method ganha_pontos(pontos) /*Aqui ele é uma indicação do que essa função vai receber (na parte inferior esquerda)*/
ganha_pontos = function(_pontos){   //Recebendo um parametro temporario
	pontos += _pontos

	if (pontos > Plvl){
		level ++;
		//Aumentando o valor do proximo level
		Plvl *= 2;
	}
}

//Criando um metodo para criar inimigos 1 e dois(o dois aparecendo depois do nivel 2)
criar_inimigo = function(){

	var xdoinimigo = irandom_range(40, 1870) //Deixando o X aleatorio
	var ydoinimigo = irandom_range(-100, -1500)//Deixando o Y aleatorio
	var inimigo = obj_inimigo1//Criando a variavel inimigo um

	var chance = random_range(0, level)//Criando chance de aparecer inimigos 1 e 2



	if chance > 2{// Criando inimigo dois de forma aleatoria
		inimigo = obj_inimigo2
	}



	instance_create_layer(xdoinimigo, ydoinimigo, "inimigos", inimigo)//Criando inimigos

}