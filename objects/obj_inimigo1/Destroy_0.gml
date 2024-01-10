/// @description Destroindo e explodindo

instance_create_layer(x, y, "inimigos", obj_impacto_inimigo)

//Rodando o metodo de pontos 
if (instance_exists(obj_controle))
{
	obj_controle.ganha_pontos(pontos);
} 

dropando_item(chancepw)