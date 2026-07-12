void pantallaTres(){
 //variable local
 //use SVA como siglas: "S" -sobrevivientes-, "V" -victimas- y "A" -asesinos-.
 String SVA = "Durante el transcurso del juego, algunos estudiantes con la esperanza de escapar, \n terminan asesinando a otros. No obstante, en los juicios en base a las pistas de la \n investigacion previa, son descubiertos por el protagonista. Al final de cada juicio,\n el asesino era castigado con la muerte por Monokuma."; 
 background(0);  
 
 //guerda el momento en el que se entra a la pantalla
 if(inicioPantalla3){
   entradaPantalla3 = millis();
   inicioPantalla3 = false;
   posXTextoSVA = -150;
   difuminadoTexto = 0;
   posYImagenSVA = 480;
   difuminadoSVA = 255;
 }
 
 //animación del texto 
   if(posXTextoSVA < 640){
     posXTextoSVA += 5;
   }
   if(difuminadoTexto < 255){
     difuminadoTexto += 5;
   }
   //texto
   fill(255, difuminadoTexto);
   textFont(texto);
   textSize(15);
   text(SVA, 5, 25);

  //animación de la imagen
   if(posYImagenSVA > 130){
     posYImagenSVA -= 5;
   } 
 image(resultadoFinal,0,posYImagenSVA,640,350);
   if(difuminadoSVA > 0){
    difuminadoSVA -= 5;
    }
    fill(0, difuminadoSVA);
    rect(0, 0, 640, 130);

 //cambio automático a la siguiente pantalla
 if(millis() - entradaPantalla3 > 30000){
   estado = 4;
   inicioPantalla3 = true;
      }
    }
