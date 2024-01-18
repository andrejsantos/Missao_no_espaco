/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// valor do movimento
view_xport[0] = random_range(-shake, shake)
view_yport[0] = random_range(-shake, shake)

//Deixando ele mais leve
shake *= 0.96;

if (shake < 0.5)
{
	instance_destroy();
}








