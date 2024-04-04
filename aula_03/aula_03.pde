float redSky = 46; float blueSky = 242; float greenSky = 190; // céu
float redGarden = 38; float blueGarden = 43; float greenGarden = 140; // garden
float redSun = 245; float blueSun = 15; float greenSun = 229; // sol
float redPlate = 74; float bluePlate = 15; float greenPlate = 45; // placa

void setup() {
  size(800, 600);
}

void draw() {
  background(redSky, greenSky, blueSky);
  
  noStroke();
  
  /* sol */
  fill(redSun, greenSun, blueSun);
  ellipse(100, 100, 120, 120);
  
  /* grama */
  fill(redGarden, greenGarden, blueGarden);
  ellipse(800, 600, 1600,600);
  
  
}
