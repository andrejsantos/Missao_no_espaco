/// @description Iniciando

alarm[0] = 60

//Iniciando o sistema de pontos
pontos = 0

//Criando um metodo para ganhar pontos
///@method ganha_pontos(pontos) /*Aqui ele é uma indicação do que essa função vai receber (na parte inferior esquerda)*/
ganha_pontos = function(_pontos){//Recebendo um parametro temporario
	pontos += _pontos
}