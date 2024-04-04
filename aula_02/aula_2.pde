PFont font;

void setup(){
  size(800,600);
  font = loadFont("Consolas-48.vlw");
}

void draw(){
  fill(0,0,200);
  textFont(font);
  text("Achei facil!", 200, 100);
  ellipse(50,50,10,10);
  rect(500,300,80,70);
  line(80,90,300,10);
  point(400, 300);
  circle(400,300,60);
  
  noFill();
  beginShape();
    vertex(400,400);
    vertex(400,450);
    vertex(410,480);
    vertex(450,490);
    vertex(480,500);
    vertex(550,420);
    vertex(470,450);
    vertex(400,400);
  endShape();
  
// backgroundColor();
}
