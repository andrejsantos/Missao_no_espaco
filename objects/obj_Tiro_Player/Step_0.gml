/// @description Destruindo o tiro

/*if y <= -50{
	instance_destroy()
}*/ //Essa função está no "Clean UP"

//Dimunuindo a escala do tiro

//Lerp é uma função de aproximação, eu faço meu valor chegar em outro valor por uma prcentagem
//Lerp (Valor que eu tenho, valor para chegar, porcetagem de aproximação)

//Fazendo meuxscale chegar no valor original que é 1
image_xscale = lerp(image_xscale, 1.8, 0.6)
image_yscale = lerp(image_yscale, 1.8, 0.6)