void pantallaDos(){
  background (0);
 
  //imagen de monokuma
 image(monokuma,0,0,640,480);
 
 //donde está el texto
 fill(255);
 quad(0, 400, 640, 400, 640, 480, 0, 480);
 
 
 //Director Monokuma
 fill(0);
 textFont(texto);
 textSize(15);
 text("Monokuma es un oso robótico que dirige la academia y quien retiene a los estudiantes.\nImpone que se queden para siempre o cometan un crimen perfecto sin ser descubiertos,\n siendo esa la única forma de poder escapar.", 5, 430);
}
