                  /// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Defininco a velocidade
speed = 6
cores2 = choose(c_red, c_green)



if instance_exists(obj_player1){//Checando se o player existe no jogo
	direction = point_direction(x, y, obj_player1.x, obj_player1.y)//Indo para a direção
	//(direction) = Achando a direção do player
}
image_angle = direction + 90//Arrumando a direção da sprite(Apontando para o player)