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

var up, down, left, right, escudo, renascer//Criando as variaveis
up = keyboard_check(ord("W"))//Cimaa
down = keyboard_check(ord("S"))//Baixo
left = keyboard_check(ord("A"))//Esquerda
right = keyboard_check(ord("D"))//Direita
escudo = keyboard_check_pressed(ord("E"))





//Criando o escudo
if (escudo and qescudo > 0)
{
	qescudo --; // Gastando o escudo
	instance_create_layer(x, y,"Escudo", obj_escudo)// Criando o escudo
	show_debug_message(qescudo) // Quantidade de escudo
}


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


//Teste Level de tiro
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
show_debug_message(vida)

