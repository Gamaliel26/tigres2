class Canasta {
  FBox canasta = new FBox(150, 100);

  Canasta(String name, float x, float y, PImage imagen) {
    
    canasta.setStatic(true);
    canasta.setPosition(x, y);
    canasta.setRestitution(0.1);
    canasta.setGrabbable(false);
    canasta.setName(name);
    canasta.attachImage(imagen);
  }

  void dibujar() {
    mundoJuego.add(canasta);
  }
}
