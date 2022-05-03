class Fondo {
  int [] lin = new int[0];
  int x, y;
  float t1, t2;
  color f;
  PImage img;



  Fondo(color f_) {
    lin = new int [0];
    x=0;
    y=0;
    t1=800;
    t2=0;
    f = f_;
    img = loadImage("img1.png");
  }

  void dibujar() {
    for(int i = 0; i<60; i++){
    stroke(f);
    line(x, i, t1, i);
    }
  }
}
