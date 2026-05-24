//TP#2 — Variables y Condicionales
//Comisión 2: Juegos (digitales o analógicos).

//variables
int estado;
float posXTexto, posYTexto, posYImagen;
PImage primeraPantalla,estudiantes,resultadoFinal,Junko,monokuma,escaparon;
PFont Play,texto;
String presentacion = "Un grupo de 15 estudiantes \n fueron encerrados en la prestigiosa \n academia Hope's Peak, cada uno de \n ellos es conocido por sus increibles \n habilidades, a excepcion del \n protagonista (el que está ubicado en \n el centro).";


void setup(){
  size (640,480);
  //valor para pantallas
  estado = 0; 
  
  //PANTALLA 0
  //imagen pantalla inicio
  posYImagen = 480;
  primeraPantalla = loadImage ("Inicio.jpg");

  //imagen pantallaUno
  estudiantes = loadImage ("Nombres De Personajes.jpeg");
  
  //Play
  posXTexto = -250;
  posYTexto = 430;
  Play = createFont ("Platinum Sign.ttf", 35);
  textFont(Play);
  
  //PANTALLA 2
  monokuma = loadImage("monokuma-art.jpg");
  //PANTALLA 3
  resultadoFinal = loadImage("Captura de pantalla 2026-05-23 211947.png");
  //PANTALLA 4
  Junko = loadImage("descarga.jpeg");
  //PANTALLA 5
  escaparon = loadImage("Captura de pantalla 2026-05-22 173738.png");
  
  //tipografía para el resto del tp
  texto = loadFont("Arial.vlw");

}

void draw(){
  background(0);

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
  
