class Puntero {
  float id;
  float x;
  float y;
  float diametro;
  PImage img;


  FWorld mundoMenu;
  FWorld mundoJuego;
  FCircle tenedor;
  FMouseJoint mj;
  Plato plato;

  Puntero(FWorld mundoMenu, FWorld mundoJuego, float _id, float _x, float _y, PImage _img) {
    this.mundoMenu = mundoMenu;
    this.mundoJuego = mundoJuego;
    id = _id;
    x = _x;
    y = _y;
    diametro = 80;
    img = _img;

    //tenedor = new FCircle (diametro);
    //tenedor.setPosition(x, y);
    //mj = new FMouseJoint (tenedor, x, y);
    //tenedor.attachImage(_img);
    //mundoMenu.add(tenedor);
    //mundoMenu.add(mj);
    //mundoJuego.add(tenedor);
    //mundoJuego.add(mj);
  }
  void setTarget(float nx, float ny) {
    //mj.setTarget(nx, ny);
     x = nx;
    y = ny;
  }

  void setID(float id) {
    this.id = id;
  }

  void borrar() {
    //mundoMenu.remove(mj);
    //mundoMenu.remove(tenedor);
    //mundoJuego.remove(mj);
    //mundoJuego.remove(tenedor);
  }

  void dibujar() {
    //pushStyle();
    //noFill();
    //stroke(255, 0, 0);
    //ellipse(tenedor.getX(), tenedor.getY(), diametro, diametro);
    //popStyle();
  }
}
