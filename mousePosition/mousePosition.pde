float x[], y[];
color c[];
int qtd;

void setup() {
  size(1280, 720);
  qtd = 10;
  x = new float[qtd];
  y = new float[qtd];
  c = new color[qtd];
  for (int i = 0; i < qtd; i++) {
    x[i] = random(1280);
    y[i] = random(720);
    c[i] = color(random(0, 255), random(0, 255), random(0, 255), random(0, 255));
  }
  noStroke();
}

void draw() {
  background(#BFDCFF);
  fill(#FF9D6F);
  circle(mouseX, mouseY, 100);
  fill(#BB6FFF);
  for (int i = 0; i < qtd; i++) {
    fill(c[i]);
    circle(x[i], y[i], 100);
    x[i] = lerp(x[i], mouseX, 0.005);
    y[i] = lerp(y[i], mouseY, 0.005);
  }
}
