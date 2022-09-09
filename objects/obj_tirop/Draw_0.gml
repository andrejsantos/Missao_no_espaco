/// @description Brilho do tiro
// You can write your code in this editor


draw_self()

gpu_set_blendmode(bm_add)

draw_sprite_ext(spr_brilho_inimigo, image_index, x, y, image_xscale * .5, image_yscale * .4, image_angle, c_green, 0.4)

gpu_set_blendmode(bm_normal)