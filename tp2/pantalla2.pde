void pantallaDos() {
  //variable local
  String MonokumaDirector = "Monokuma es un oso robótico que dirige la academia y quien retiene a los estudiantes.\nImpone que se queden para siempre o cometan un crimen perfecto sin ser descubiertos,\n siendo esa la única forma de poder escapar.";
  background (0);

  //guerda el momento en el que se entra a la pantalla
 if(inicioPantalla2){
   entradaPantalla2 = millis();
   inicioPantalla2 = false;
   difuminadoRect = 0;
   difuminadoTexto = 0;
   posYRect = 480;
   posYImagenMono = -480;
   difuminadoMonokuma = 255;
 }

//animación de la imagen
  if(posYImagenMono < 0){
    posYImagenMono += 10;
  }else{
    posYImagenMono = 0;
  }
  //imagen de monokuma
  image(monokuma, 0, posYImagenMono, 640, 480);
  
  if(difuminadoMonokuma > 0){
  difuminadoMonokuma -= 5;
  }
  fill(0, difuminadoMonokuma);
  rect(0, 0, 640, 480);

 //animación rectangulo donde está el texto
   if(posYRect > 425){
       posYRect = posYRect - velocidad;
     }else{
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
       textSize(15);
       text(MonokumaDirector, 5, 440);   
  }
  
  //cambio automático a la siguiente pantalla
 if(millis() - entradaPantalla2 > 20000){
   estado = 3;
   inicioPantalla2 = true;
 }
}
