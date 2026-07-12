void pantallaInicio(){
 //movimiento imagen pantalla inicio
  if (millis() >= 1000){
    if (posYImagen > 0){
      posYImagen -= 10;
    }
  }
  if(difuminadoImagenes > 0){
    difuminadoImagenes -= 5;
  }
  image (primeraPantalla,0,posYImagen,640,480);
  fill(0, difuminadoImagenes);
  rect(0,0,640,480);
   
  //boton play movimiento
  if(posYImagen <= 0 && posXTextoPlay < 380){
    posXTextoPlay += 10;
  }else if(posXTextoPlay >= 380){
    posXTextoPlay = 380;
  }
  
  //si el mouse esta en "Play" -sin seleccionarlo-, este se pone de color magenta
  mouseTextoPlay = mouseX > posXTextoPlay && mouseX < posXTextoPlay + textWidth("PLAY") && mouseY < posYTextoPlay && mouseY > posYTextoPlay -35;
       if (mouseTextoPlay){
        fill(255,0,255);    
      }else{
        fill(0);
      }
        text("PLAY",posXTextoPlay, posYTextoPlay); 
    }
      
 void mouseClicked(){
   textFont(PlayReinicio);
   //si doy click en la zona del texto -PLAY/REINICIAR-, va a la siguiente pantalla
  if(mouseX > posXTextoPlay && mouseX < posXTextoPlay + textWidth("PLAY") && mouseY < posYTextoPlay && mouseY > posYTextoPlay -35){
    estado = 1;
   }
  if(mouseX > posXTextoReinicio && mouseX < posXTextoReinicio + textWidth("REINICIAR") && mouseY < posYTextoReinicio && mouseY > posYTextoReinicio -35){
    estado = 0;
   }
 }
