/// @description Time


/*if y >= 1100{//Se ele passar do X indicado ele é apagado do jogo
	instance_destroy()
}*/

if (y > room_height + 100){//Aqui é o mesmo codigo a cima só que mais simplificado
	instance_destroy(id, false)//Impede que ele não crie uma explosão denecessaria
}

