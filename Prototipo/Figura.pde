class Figura {

  int imageIndex=0;
  PImage[]  images= new PImage[22];
  int x=0, y;
  float t1, t2;
  boolean tam = true, tam1 = true, tam2 = true;


  Figura () {

    for (int i=0; i < images.length; i++) {
      images[i]= loadImage("img_" + i + ".png");
    }
    
    imageMode(CENTER);
  }

  void dibujar() {

    if (tam == true) {

      image(images[imageIndex], width/2+x, height/2);
      imageIndex=(imageIndex+1)% images.length;

      if (mouseX>width/2) {
        x=x+3;
      }
    }
    if (mouseY > height/2) {
      tam=false;

      image(images[imageIndex], width/2+x, height/2, 400, 300);
      imageIndex=(imageIndex+1)% images.length;
      if (mouseX>width/2) {
        x=x+10;
      }
      if (mouseX<width/2) {
        x=x-10;
      }
    } else {
      tam = true;
    }
  }
}
