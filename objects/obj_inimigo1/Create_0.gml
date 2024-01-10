/// @description Movimento
chancepw = 30;

vspeed = 2
pontos = 10
//Criando uma função tiro
atirando = function(){
	if y >= 0{
	instance_create_layer(x, y, "Tiros", obj_tirop)
	}

}

alarm[0] = random(60)

///method dropando_item()
dropando_item = function(_chancepw)
{
	var valor = random(100);
	if (valor  < _chancepw)
	{
		instance_create_layer(x, y, "Tiros", Obj_power)
	}
}