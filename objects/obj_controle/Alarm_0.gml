/// @description Criando inimigos
// You can write your code in this editor
//laõ de repetição de codigo

if !instance_exists(obj_inimigo1) //se NÃO existe instancia(inimigos) 
{
	var repetir = 8 * level;
	repeat(repetir)
	{
		criar_inimigo()// Função criando inimigos
	}
}





/*if instance_exists(obj_inimigo1){   //CODIGO ORIGINAL
	show_debug_message("Daqui não passará")
}
else{
	show_debug_message("Processando inimigos....")
	repeat(10){
		criar_inimigo()// Criando inimigos 
	}
}*/


alarm[0] = room_speed * 5