// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Screenshake(_shake){
	var screen = instance_create_layer(0,0,"Escudo", obj_screenshake);
	screen.shake = _shake;
}

//Função ganhando pontos(_pontos)
function ganhando_pontos(_pontos)
{
	if (instance_exists(obj_controle))
	{
		obj_controle.ganha_pontos(_pontos);
	}
}