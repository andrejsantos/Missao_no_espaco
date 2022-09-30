/// @description Criando inimigos
// You can write your code in this editor


var xdoinimigo = irandom_range(40, 1870) //Deixando o X aleatorio
var ydoinimigo = random_range(-100, -1500)//Deixando o Y aleatorio

instance_create_layer(xdoinimigo, ydoinimigo, "inimigos", obj_inimigo1)//Criando inimigo 1


instance_create_layer(xdoinimigo, ydoinimigo, "inimigos", obj_inimigo2)//Criando inimigo 2 















alarm[0] = room_speed * random_range(35, 60)