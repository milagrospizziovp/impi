//TP#2 Recuperatorio — Variables y Condicionales
//Comisión 2: Juegos (digitales o analógicos).

void setup(){
  size (640,480);
  manejoTiempo = 0; 
  
  //valor para pantallas
  estado = 0; 
   
  //PANTALLA 0
    //Imagen parametros
      posYImagen = 480;
    //Play parametros
      posXTextoPlay = -250;
      posYTextoPlay = 430;    
  primeraPantalla = loadImage ("Inicio.jpg");
  //PANTALLA 1
    Makoto = loadImage ("Makoto.png");
    Sayaka = loadImage ("Sayaka.jpg");
    Celestia = loadImage ("celestia.png");
    Sakura = loadImage ("Sakura.jpg");
    Byakuya = loadImage ("Byakuya.jpg");
    Chihiro = loadImage ("Chihiro.jpg");
    Leon = loadImage ("Leon.jpg");
    Toko = loadImage ("Toko.jpg");
    ImposterJunko = loadImage ("junko.png");
    Mondo = loadImage ("mondo.png");
    Taka = loadImage ("kiyo.png");
    Aoi = loadImage ("Aoi.png");
    Hiro = loadImage ("hiro.png");
    Hifumi = loadImage ("hifumi.png");
    Kyoko = loadImage ("kyoko.png");
  //PANTALLA 2
    monokuma = loadImage("monokuma-art.jpg");
  //PANTALLA 3
    resultadoFinal = loadImage("Captura de pantalla 2026-05-23 211947.png");
  //PANTALLA 4
    Junko = loadImage("descarga.jpeg");
  //PANTALLA 5
    //REINICIAR parametros
      posXTextoReinicio = 80;
      posYTextoReinicio = 50;
      textAlign(LEFT);
    escaparon = loadImage("Captura de pantalla 2026-05-22 173738.png");
  
  //tipografía para PLAY y REINICIO
    PlayReinicio = createFont ("Platinum Sign.ttf", 35); 
    textFont(PlayReinicio);
  //tipografía para el resto del tp
    texto = loadFont("Arial.vlw");
}

void draw(){
  background(0);
  
  //manejo del tiempo  
  segundos = millis();
  println(segundos);
  
  if( estado == 0 ){
   pantallaInicio();
  }else if( estado == 1 ){
   pantallaUno();
  }else if( estado == 2 ){
   pantallaDos();  
  }else if( estado == 3 ){
   pantallaTres();
  }else if( estado == 4 ){
   pantallaCuatro();
  }else if( estado == 5){
   pantallaCinco(); 
  }
}
