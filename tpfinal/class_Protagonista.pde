class Protagonista {
 
  FCircle protagonista = new FCircle(50);
  PImage imgParticulas;
  Protagonista(String name, PImage imgProtagonista, PImage imgParticulas, float x, float y) {
    protagonista.setName(name);
    protagonista.setStatic(false);
    protagonista.setPosition(x, y);
    protagonista.setRestitution(1);
    protagonista.setGrabbable(true);
    protagonista.attachImage(imgProtagonista);
    this.imgParticulas = imgParticulas;
  }

  void dibujar() {
    mundoJuego.add(protagonista);
  }

  void dibujarEnMenu(PImage img, float x, float y) {
    mundoMenu.add(protagonista);
    mundoMenu.setGravity(0, 0);
    protagonista.attachImage(img);
    protagonista.setPosition(x, y);
  }

  void dividir() {
    mundoJuego.remove(protagonista);
    float d = protagonista.getSize()/4;
    float x = protagonista.getX();
    float y = protagonista.getY();

    for (int i = 0; i < 6; i++) {
      FCircle particulas = new FCircle(d);
      particulas.setPosition(x + random (-d, d), y+ random (-d, d));
      particulas.attachImage(imgParticulas);
      mundoJuego.add(particulas);
    }
  }

  void remover () {
    //mundoJuego.remove(particulas);
    mundoJuego.remove(protagonista);
  }

  void reposicionar(float x, float y) {
    protagonista.setPosition(x, y);
  }
}
