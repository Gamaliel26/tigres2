PImage img,img1;

void setup() {
  size(800, 600);
  img = loadImage("img3.png");
  img1 = loadImage("img1.png");
  background(0);
  image(img1,0,0);
}

void draw() {
  //fill(20,1);
  //rect(0, 0, 800, 600);
  //if(400){
  int x = int (random(img.width));
  int y = int (random(img.height));
  int loc = x + y * img.width;

  loadPixels();
  float r = red (img.pixels[loc]);
  float g = green (img.pixels[loc]);
  float b = blue (img.pixels[loc]);
  noStroke();
  fill(r, g, b, 100);
  ellipse(x, y, 5, 5);
  }
