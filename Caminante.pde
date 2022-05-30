class Caminante {


  float posX, posY, tam = 25;
  float dir, vel;

  Caminante() {
    posX = width/2;
    posY = height/2;
    tam = 25;
    vel = 2;
    dir =random(190,210);
  }

  void dibujar() {
    noStroke();
    fill(0,100);
    ellipse(posX, posY, tam, tam);
  }

  void mover() {
    if(mousePressed){
    dir+=2;
    }
    
    posX = posX+vel*cos(radians(dir));
    posY = posY+vel*sin(radians(dir));
    if (posX >= width) {
      posX = 0;
    }
    if (posY >= height) {
      posY = 0;
    }
     if (posX < 0) {
      posX = width;
    }
    if (posY < 0) {
      posY = height;
    }
  }

  void cambiarDireccion() {
    dir = random(0, 360);
  }
}
