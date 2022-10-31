class Plato {
  FCircle plato = new FCircle(100);

  Plato (String name, float x, float y, PImage img) {
    plato.setPosition(x, y);
    plato.setName(name);
    plato.attachImage(img);
  }

  void dibujar() {
    mundoJuego.add(plato);
    //plato.setStatic(true);
  }
  void dibujarEnMenu() {
    mundoMenu.add(plato);
    println("ajsdjakjsdjkaskjdjkasjkdjkasjkdajsjkdajk");
    //plato.setStatic(false);
  }
  void reposicionar(float x, float y) {
    plato.setPosition(x, y);
  }

  void remover() {
    //mundoJuego.remove(plato);
  }
  void grabbableTrue() {
    //plato.setGrabbable(true);
  }
  void grabbableFalse() {
    //plato.setGrabbable(false);
  }
}
