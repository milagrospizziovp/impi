void pantallaUno(){
  //variable local  
  String presentacion = "Un grupo de 15 estudiantes fueron encerrados en la prestigiosa academia Hope's Peak. \n Cada uno de ellos es conocido por sus increibles habilidades, a excepcion del \n protagonista.";
 background(0); 
 
 //guerda el momento en el que se entra a la pantalla
 if(inicioPantalla1){
   entradaPantalla1 = millis();
   inicioPantalla1 = false;
   difuminadoRect = 0;
   difuminadoTexto = 0;
   posYRect = 480;
 }
 
 //cada 5 segundos, cambia la presentación de cada personaje
   if (millis() - manejoTiempo >= 5000){ 
     manejoTiempo = millis();
     if (imagenPersonaje < 15){
      imagenPersonaje = imagenPersonaje + 1;
     }else{
       imagenPersonaje = 1;
     }
     difuminadoImagenes = 255;
   }
    if(difuminadoImagenes > 0){
      difuminadoImagenes -= 5;
    }
       if (imagenPersonaje == 1){
          image (Makoto, 0,0,640,480);
       }else if (imagenPersonaje == 2){
          image (Sayaka, 0,0,640,480);
       }else if (imagenPersonaje == 3){
          image (Sakura, 0,0,640,480); 
       }else if (imagenPersonaje == 4){
          image (Chihiro, 0,0,640,480);
       }else if (imagenPersonaje == 5){
          image (Toko, 0,0,640,480);  
       }else if (imagenPersonaje == 6){
          image (Leon, 0,0,640,480);
       }else if (imagenPersonaje == 7){
          image (Byakuya, 0,0,640,480);
       }else if (imagenPersonaje == 8){
          image (Mondo, 0,0,640,480);
       }else if (imagenPersonaje == 9){
          image (Taka, 0,0,640,480);
       }else if (imagenPersonaje == 10){
          image (Hifumi, 0,0,640,480); 
       }else if (imagenPersonaje == 11){
          image (Aoi, 0,0,640,480);
       }else if (imagenPersonaje == 12){
          image (ImposterJunko, 0,0,640,480);  
       }else if (imagenPersonaje == 13){
          image (Kyoko, 0,0,640,480);
       }else if (imagenPersonaje == 14){
           image (Hiro, 0,0,640,480);
       }else if (imagenPersonaje == 15){
          image (Celestia, 0,0,640,480);
       }
     fill(0, difuminadoImagenes);
     rect(0,0,640,480);

   //animación rectangulo donde está el texto
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
       textSize(15);
       text(presentacion, 0, 440);   
  }
 //cambio automático a la siguiente pantalla
 if(millis() - entradaPantalla1 > 75000){
   estado = 2;
   inicioPantalla1 = true;
 }
}
