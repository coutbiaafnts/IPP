PFont font;

/* sun */
float redSun = 255, greenSun = 235, blueSun = 3;

/* sky */
float redSky = 3, greenSky = 185, blueSky = 255;

/* garden */
float redGarden = 21, greenGarden = 116, blueGarden = 7;

/* plate */
float redPlate = 77, greenPlate = 29, bluePlate = 7;

/* text color */
float redTxt = 134, greenTxt = 112, blueTxt = 83;

float sunPosition = 100;
float transparence = 1000;

void setup() {
  size(1280, 720);
  font = loadFont("JetBrainsMono-Bold-48.vlw");
}

void draw() {
  /* sky */
  background(redSky, greenSky, blueSky);

  /* sun */
  fill(redSun, greenSun, blueSun);
  noStroke();
  circle(100, sunPosition, 150);

  /* garden */
  fill(redGarden, greenGarden, blueGarden);
  noStroke();
  ellipse(1280, 720, 2600, 700);

  /* plate */
  fill(redPlate, greenPlate, bluePlate);
  beginShape();
  vertex(700, 300);
  vertex(800, 300);
  vertex(830, 330);
  vertex(800, 360);
  vertex(700, 360);
  vertex(710, 360);
  vertex(710, 500);
  vertex(700, 500);
  endShape();

  /* text */
  textSize(30);
  fill(redTxt, greenTxt, blueTxt, transparence);
  text("Hello!", 723, 340);

  /* make the sun go down */
  sunPosition += 0.5;

  /* animating sky */
  if (sunPosition < 400) {
    redSky -= 0.4; 
    greenSky -= 0.4;
    blueSky -= 0.4;
    
    redGarden -= 0.17;
    greenGarden -= 0.17;
    blueGarden -= 0.17;
    
    redPlate -= 0.15;
    greenPlate -= 0.15;
    bluePlate -= 0.15;
    
    redTxt -= 0.2;
    greenTxt -= 0.2;
    blueTxt -= 0.2;
    
    redSun -= 0.4;
    greenSun -= 0.4;
    blueSun -= 0.4;
  }
}
