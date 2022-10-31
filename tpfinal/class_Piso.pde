class Piso {
  FBox piso = new FBox(width, 10);
  String name;
  float x, y;

  Piso(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;

    piso.setName(name);
    piso.setStatic(true);
    piso.setPosition(x, y);
    piso.setGrabbable(false);
    piso.setFill(0);
  }
  void dibujar() {
    mundoJuego.add(piso);
  }
}
