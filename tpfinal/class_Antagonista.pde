class Antagonista {

  FCircle pinchos = new FCircle(100);
  PImage img;
  float x, y;

  Antagonista(String name, PImage img, float x, float y) {
    this.img = img;
    this.x = x;
    this.y = y;

    pinchos.setName(name);
    pinchos.setStatic(true);
    pinchos.setPosition(x, y);
    pinchos.setGrabbable(false);
    pinchos.attachImage(img);
  }

  void dibujar() {
    mundoJuego.add(pinchos);
  }
  void remover() {
    mundoJuego.remove(pinchos);
  }
}
