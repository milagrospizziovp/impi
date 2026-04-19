//TP#1 — Dibujo básico y GitHub
//Comisión 2: Obra arquitectónica.

PImage piramidesDeGiza;

void setup(){
 size(800,400);
 piramidesDeGiza = loadImage("Piramides.jpg");
}

void draw(){
 background(225);
 
 //cielo "difuminación"
 fill(234,171,102);
 noStroke();
 circle(490,200,300);
 fill(234,190,102);
 noStroke();
 circle(450,320,200);
 fill(162,77,80);
 noStroke();
 circle(750,70,280);
 fill(162,77,80);
 noStroke();
 circle(400,50,280);
 fill(162,77,80);
 noStroke();
 circle(800,280,250);
 fill(222,111,81);
 noStroke();
 circle(675,265,200);
 fill(245,167,138);
 noStroke();
 circle(400,165,60);
 fill(245,167,138);
 noStroke();
 circle(450,165,80);
 fill(245,167,138);
 noStroke();
 circle(500,150,100);
 fill(245,167,138);
 noStroke();
 circle(680,250,95);
 fill(240,147,90);
 noStroke();
 circle(500,50,150);
 fill(245,141,77);
 noStroke();
 circle(600,75,150);
 fill(245,167,138);
 noStroke();
 circle(550,150,100);
 fill(245,167,138);
 noStroke();
 circle(630,150,95);
 fill(245,167,138);
 noStroke();
 circle(615,200,135);
 fill(211,159,145);
 noStroke();
 circle(500,5,200);
 fill(211,159,145);
 noStroke();
 circle(670,10,280);
 fill(201,191,187);
 noStroke();
 circle(550,1,100);
 fill(201,191,187);
 noStroke();
 circle(670,1,200);
 
  //arena
 fill(216,157,68);
 stroke(#DEA55C);
 quad(400,301,800,320,800,400,400,400);
 fill(222,105,16,85);
 noStroke();
 quad(400,325,800,335,800,400,400,400);
 fill(214,117,52);
 noStroke();
 quad(400,349,800,345,800,400,400,400);
 
 //primera pirámide
 fill(193,124,80);
 noStroke();
 triangle(725,170,643,320,677,325);
 fill(175,109,67);
 stroke(155,90,37);
 triangle(725,170,677,325,797,325);
 
 //segunda pirámide
 fill(224,144,59);
 stroke(180,102,38);
 triangle(580,132,488,320,519,325);
 fill(209,125,57);
 stroke(180,102,38);
 triangle(580,132,519,325,670,325);
 fill(224,144,59);
 stroke(180,102,38);
 triangle(580,132,549,195,566,176);
 fill(209,125,57);
 stroke(180,102,38);
 triangle(580,132,566,176,609,193);
 
 //tercera pirámide
 fill(198,112,36);
 stroke(170,93,29);
 triangle(452,223,412,332,503,332);
 fill(216,122,39);
 stroke(170,93,29);
 triangle(452,223,403,329,412,332);
 
 //pirámides pequeñas
 //primera
 fill(198,112,36);
 stroke(170,93,29);
 quad(425,302,420,302,410,336,436,336);
 
 //segunda
 fill(198,112,36);
 stroke(170,93,29);
 quad(470,302,465,302,452,336,482,336);
 fill(0);
 line(415,322,431,322);
 line(418,311,429,311);
 line(458,322,478,322);
 line(462,311,473,311);
 
 image(piramidesDeGiza,0,0,400,400);
 
 fill(255);
 textSize( 24 );
 text( mouseX + " / " + mouseY, mouseX, mouseY );
}
