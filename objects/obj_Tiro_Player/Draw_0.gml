  /// @description mexendo no desenho



//Desenhando o tito
draw_self()


gpu_set_blendmode(bm_add)//Alterando como o video trata as cores

//Desenhando o brilho                          // escala do brilho x e y          //tranparencia, //cor do brilho, //opacidade do brilho
draw_sprite_ext(brilho, image_index, x, y, image_xscale * .5, image_yscale * .4, image_angle, c_aqua, 0.3)


gpu_set_blendmode(bm_normal)//Voltando ao normal
