ArrayList<Fondo> fondo;

Paleta p;

void setup() {
  size(800, 600);

  fondo = new ArrayList<Fondo>();
  p = new Paleta("img1.png");
  for (int i = 0; i<1; i++) {
    fondo.add(new Fondo(p.darUnColor()));
  }
}

void draw() {

  for (Fondo f : fondo) {
    for (int i = 0; i<600; i++) {
      f.dibujar();
    }
  }
}
