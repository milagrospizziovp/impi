void pantallaCuatro(){
  //variable local
 String Mastermind = "En el último juicio, se descubre que Junko era la mente maestra de todo,se dieron cuenta al notar que \n ella conocía secretos que nadie más podía saber. Todo lo que había pasado, incluidas las traiciones \n y los asesinatos, formaba parte de su plan. \n Su verdadera identidad quedó al descubierto y al final se auto-castiga con la muerte.";
 background(0); 
  //guerda el momento en el que se entra a la pantalla
 if(inicioPantalla4){
   entradaPantalla4 = millis();
   inicioPantalla4 = false;
   posYMastermind = 600;
   posYRect = 480;
   difuminadoRect = 0;
   difuminadoTexto = 0;
   difuminadoJunko = 255;
   posYImagenJunko = -480;
 }
  
  //animación de la imagen
  if(posYImagenJunko < 0){
    posYImagenJunko += 10;
  }else{
    posYImagenJunko = 0;
  }
    image( Junko,0,posYImagenJunko,640,400 );
  if(posYImagenJunko == 0){
   if(difuminadoJunko > 0){
      difuminadoJunko -= 10;
    }else{
      difuminadoJunko = 0;
    }
    fill(0, difuminadoJunko);
    rect(0, 0, 640, 480);
  }
    
  //animación deL texto
   if(difuminadoJunko == 0){
      if(posYMastermind > 420){
        posYMastermind -= 5;
      }else{
       posYMastermind = 420; 
      }
      if(difuminadoTexto < 255){
        difuminadoTexto = difuminadoTexto + 5;
      }
       fill(255, difuminadoTexto);
       textFont(texto);
       textSize(13);
       text(Mastermind, 5, posYMastermind);  
      }  

  //cambio automático a la siguiente pantalla
 if(millis() - entradaPantalla4 > 30000){
   estado = 5;
   inicioPantalla4 = true;
 }
}
