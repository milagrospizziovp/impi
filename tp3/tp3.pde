//TP#3 — OpArt con Funciones y Ciclo For
//Comisión 2
//Trabajo asignado: 09
//  https://youtu.be/KdUL526bV5s

//variables globales
int cantidadElipses;
float tam, espacioEntreElipses,centroXReplica,centroYReplica,direccionX,direccionY;
PImage trabajo09;

void setup(){
size (800,400);
trabajo09 = loadImage("09.jpg");

//asignación de variables para elipses
cantidadElipses = 19;
tam = 26.8;
espacioEntreElipses = 22.55;

//asignacion de valores para el centro de la imagen replicada
centroXReplica = 600;
centroYReplica = 200;

//asignacion de valores para map
direccionX = 0;
direccionY = 300;
}

void draw(){
background (0);
image (trabajo09,0,0,400,400);

// Ciclos For para dibujar el trabajo asignado 
  for( int i = 0; i < cantidadElipses; i++){
    for( int j = 0; j < cantidadElipses; j++){
    float d = dist(centroXReplica,centroYReplica,400+i*espacioEntreElipses,j*espacioEntreElipses);
    float degradeeCentro = map (d, 0, 300, 0, tam );
    fill(255);
    noStroke();
    ellipse (400+i*espacioEntreElipses, j*espacioEntreElipses, degradeeCentro, degradeeCentro);
        }
      }
      //llamo a las funciones creadas
      interaccion2();
      interaccion3();
}
