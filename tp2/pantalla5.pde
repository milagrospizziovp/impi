void pantallaCinco(){
  //variable local
 String Final = "Al descubrir la verdad y vencer a Junko, se abre la salida de la academia.  Los sobrevivientes logran \n cruzar las puertas hacia el mundo exterior.  Dejan atrás los juegos mortales y la desesperación de la \n academia.  Aunque el mundo está en ruinas, conservan la esperanza de reconstruirlo.";
 background(0);
 textFont(PlayReinicio);
 //guerda el momento en el que se entra a la pantalla
 if(inicioPantalla5){
   entradaPantalla5 = millis();
   inicioPantalla5 = false;
   difuminadoRect = 0;
   difuminadoTexto = 0;
   posYRect = 480;
   posXFinal = 640;
   difuminadoFinal = 255;
 }
 
  //animación de la imagen
    if(posXFinal > 0){
       posXFinal -= 10;
    }else{
       posXFinal = 0;
    }
   image (escaparon,0,0,640,480);
     if(posXFinal == 0){
     if(difuminadoFinal > 0){
        difuminadoFinal -= 2;
     }else{
        difuminadoFinal = 0;
     }
}
    fill(255, difuminadoFinal); 
    rect(0, 0, 640, 480);
 
 //si el mouse esta en "REINICIAR" -sin seleccionarlo-, este se pone de color magenta
 if(millis() - entradaPantalla5 > 10000){
 mouseTextoReinicio = mouseX > posXTextoReinicio && mouseX < posXTextoReinicio + textWidth("REINICIAR") && mouseY < posYTextoReinicio && mouseY > posYTextoReinicio -35;
  if (mouseTextoReinicio){
    fill(255,0,255);    
  }else{
    fill(255);
  }
    text("REINICIAR",posXTextoReinicio, posYTextoReinicio); 
 } 
 
  //animación deL texto
   if(posYRect > 425){
       posYRect = posYRect - velocidad;
     } else{
       posYRect = 425;
     }
     if(difuminadoRect < 255){
       difuminadoRect = difuminadoRect + 5;
     }
  fill(255, difuminadoRect);
  rect(0, posYRect, 640, 55);
  
   if(posYRect == 425){
      if(difuminadoTexto < 255){
        difuminadoTexto = difuminadoTexto + 5;
      }
       fill(0, difuminadoTexto);
       textFont(texto);
       textSize(13);
       text(Final, 5, 440);   
  }
}
