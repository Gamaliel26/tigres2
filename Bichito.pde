ArrayList<Caminante> caminantes;

void setup() {
  size(600, 600);
  background(0);
  caminantes = new ArrayList<Caminante>();
  for (int i=0; i<5; i++) {
    caminantes.add(new Caminante());
  }
}

void draw() {

  fill(255, 1);
  rect(0, 0, width, height);
  for (Caminante c : caminantes) {
    c.mover();
    c.dibujar();
  }
}

void keyPressed() {
  caminantes.add(new Caminante());
}
