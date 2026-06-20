  //interacción 1: hacer que el centro vacio siga el cursor del mouse en el eje Y
   void mouseDragged(){
    if (mousePressed == true){
    centroYReplica = mouseX;
    centroYReplica = mouseY;
    }
    println (centroYReplica, centroYReplica);
  }
  
  //interacción 2: hacer que el centro vacio siga el cursor del mouse
  float calculoDegradee (float degradee){
  float resultado = map(degradee, 0, 300, 0, tam);
  return resultado;
}
  void dibujoElipses(float posX, float posy, float ancho, float alto){
  fill(255);
  noStroke();
  ellipse(posX,posy,ancho,alto);
}
  void interaccion2(){
   if(key == 'm' || key == 'M'){
   for( int i = 0; i < cantidadElipses; i++){
    for( int j = 0; j < cantidadElipses; j++){
    float d = dist(mouseX,mouseY,400+i*espacioEntreElipses,j*espacioEntreElipses);
    float degradeeCentro = calculoDegradee (d);
    dibujoElipses (400+i*espacioEntreElipses, j*espacioEntreElipses, degradeeCentro, degradeeCentro);
        }
      }
   }
    println (mouseX,mouseY);
}
  
  //interacción 3: hacer que cambié el degradee mientras se mueve el mouse 
  void interaccion3(){
   if (key == 'r' || key == 'R'){
     for( int i = 0; i < cantidadElipses; i++){
    for( int j = 0; j < cantidadElipses; j++){
    float d = dist(centroXReplica,centroYReplica,400+i*espacioEntreElipses,j*espacioEntreElipses);
    float degradeeCentro = map (d, mouseX, mouseY, 0, tam );
    dibujoElipses (400+i*espacioEntreElipses, j*espacioEntreElipses, degradeeCentro, degradeeCentro);
        }
      }
   }
    println (mouseX,mouseY);
}
  
   void keyPressed(){ //para que vuelva a la posición original
    if (key == ' '){
    centroXReplica = 600;
    centroYReplica = 200;
    }   
}
