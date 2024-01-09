 /// @description Iniciando variaveis
//Movendo o player

/*if keyboard_check(ord("A")){
	x -= velocidade//Movendo pára esquerda}

if keyboard_check(ord("D")){
		x += velocidade//Movendo para direita
	}
if keyboard_check(ord("W")){
		y -= velocidade//Movendo para cima
	}
if keyboard_check(ord("S")){
		y += velocidade//Movendo para baixo
	}*/
/*-------------------------------------------------*/

//Melhorando o codigo de movimentação

var up, down, left, right//Criando as variaveis
up = keyboard_check(ord("W"))//Cima
down = keyboard_check(ord("S"))//Baixo
left = keyboard_check(ord("A"))//Esquerda
right = keyboard_check(ord("D"))//Direita


//Dando velocidade
/*y -= up * velocidade
y += down  * velocidade
x -= left  * velocidade
x += right * velocidade*/

//Dando velocidade com codigo reduzido
y += (down - up) * velocidade/*O valor maior - o menor vezes a velocidade*/
x += (right - left) * velocidade

//Criando tiro
atirando()


////Teste Level de tiro
//if keyboard_check_pressed(vk_up) 
//{
//	if level_tiro < 5 //Elevando até o 5 
//	{
//	level_tiro ++;
//	}
//}

//if keyboard_check_pressed(vk_down) 
//{
//	if level_tiro > 1 //Elevando até o 5 
//	{
//	level_tiro --;
//	}
//}
//show_debug_message(level_tiro)