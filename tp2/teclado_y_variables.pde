//cada vez que pulsamos bara espaciadora, pasa a la siguiente pantalla.
void keyPressed(){
 if( key == ' ' ){ 
    if( estado == 1 ){
    estado = 2;
    }else if( estado == 2 ){
    estado = 3;
    }else if( estado == 3 ){
     estado = 4;
    }else if( estado == 4 ){
      estado = 5;
    }
  }
}

//variables usadas en todo el programa
  //variables globales
    int estado,segundos,manejoTiempo,imagenPersonaje;
    PImage primeraPantalla,resultadoFinal,Junko,monokuma,escaparon;
  //variables pantalla0
    float posXTextoPlay, posYTextoPlay, posYImagen;
    boolean mouseTextoPlay; 
    float difuminadoImagenes = 255;
    PFont PlayReinicio,texto;
  //variables pantalla1
    int entradaPantalla1 = 0;
    boolean inicioPantalla1 = true;
    int posYRect = 480;
    int velocidad = 1;
    float difuminadoRect = 0;
    float difuminadoTexto = 0;
    PImage Makoto,Sayaka,Kyoko,Aoi,Hifumi,Sakura,Celestia,Byakuya,Chihiro,ImposterJunko,Leon,Mondo,Taka,Toko,Hiro; //presentaciones de cada personaje 
  //variables pantalla2
    int entradaPantalla2 = 0;
    float difuminadoMonokuma = 255;
    float posYImagenMono = 480;
    boolean inicioPantalla2 = true;
  //variables pantalla3
    float posXTextoSVA = 25;
    float posYImagenSVA = 480;
    float difuminadoSVA = 255;
    int entradaPantalla3 = 0;
    boolean inicioPantalla3 = true;
  //variables pantalla4
    int entradaPantalla4 = 0;
    float posYMastermind = 600;
    float difuminadoJunko = 255;
    float posYImagenJunko = -480;
    boolean inicioPantalla4 = true;
  //variables pantalla5
    int entradaPantalla5 = 0;
    float posXFinal = 640;
    float difuminadoFinal = 255;
    float posXTextoReinicio, posYTextoReinicio;
    boolean inicioPantalla5 = true;
    boolean mouseTextoReinicio; 
