class Mancha {
  Fondo fondo;

  float x, y;
  float tam;
  float dir, vel;
  int frame;
  PImage imgManchas;

  Mancha(Fondo fondo, PImage imgManchas, float x, float y, float tam) {
    this.fondo = fondo;
    this.imgManchas = imgManchas;
    this.x = x;
    this.y = y;
    this.tam = tam;
  }

  void dibujar() {
    push();
    imageMode(CENTER);
    image(imgManchas, x, y, tam, tam);
    pop();
  }

  void mover(float haciaDerecha, float haciaAbajo) {
    this.x = this.x + haciaDerecha;
    this.y = this.y + haciaAbajo;
  }
}
