//Criando o inimigo
var xinimigo = random_range(80, 1840)
instance_create_layer(xinimigo, 20, "inimigos", obj_inimigo2)

//Criando o objeto tiro
if y >= 0{
	instance_create_layer(x, y , "Tiros", obj_tiro2)
}

alarm[0] = room_speed * random_range(1, 20)