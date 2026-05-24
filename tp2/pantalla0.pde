void pantallaInicio(){
  
 //imagen pantalla inicio movimiento
  if( posYImagen > 0 ){
    posYImagen -= 5;
  }else if( posYImagen < 0 ){
    posYImagen = 0; 
  }
  println(frameCount);
  image (primeraPantalla,0,posYImagen,640,480);
  
  //boton play movimiento
  if( posYImagen <= 0 && posXTexto < 380 ){
    posXTexto += 10;
  }else if( posXTexto >= 380){
    posXTexto = 380;
  }
  fill(0);
  textFont(Play);
  text("PLAY",posXTexto, posYTexto); 
}
 
 
 void mouseClicked(){
   //si doy click en la zona del texto, va a la siguiente pantalla
  if( mouseX > posXTexto && mouseX < posXTexto + textWidth("PLAY") && mouseY < posYTexto && mouseY > posYTexto -35 ){
   estado = 1;
   }
 }
