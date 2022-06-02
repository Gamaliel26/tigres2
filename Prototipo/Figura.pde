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
      push();
      tint(50, 50);
      image(images[imageIndex], width/2+x, height/2);
      imageIndex=(imageIndex+1)% images.length;
      pop();

      // Mucho ruido figura más grande
      if (amp>50) {
        x=x+3;
      }
    }

    // Sonidos agudos figura pequeña
    if (pitch > maxPitch) {
      push();
      tam=false;
      tint(50, 50);
      image(images[imageIndex], width/2+x, height/2, 400, 300);
      imageIndex=(imageIndex+1)% images.length;

      pop();

      // mucho ruido figura hacia la derecha
      if (amp>50) {
        x=x+2;
      }

      // poco ruido figura hacia la izquierda
      if (amp<35) {
        x=x-2;
      }
    } else {
      tam = true;
    }
  }
}
