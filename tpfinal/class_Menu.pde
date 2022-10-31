class Menu {

  FBody nombrePlato;
  Protagonista naranja, lechuga;
  Plato plato;
  int plato_x, plato_y;

  PImage fondo, imgNaranja, imgLechuga, imgParticulas;
  float naranja_x, lechuga_x, y;

  Menu(PImage fondo, PImage imgNaranja, PImage imgLechuga) {
    this.fondo = fondo;
    this.imgNaranja = imgNaranja;
    this.imgLechuga = imgLechuga;
    naranja_x = width/2 - 450;
    lechuga_x = width/2 + 450;
    y = height/2;

    plato_x = width/2;
    plato_y = height/2;

    plato = new Plato("Plato Menu", plato_x, plato_y, imgGeneral[2]);
    naranja = new Protagonista("Naranja", imgNaranja, imgParticulas, naranja_x, y);
    lechuga = new Protagonista("Lechuga", imgNaranja, imgParticulas, naranja_x, y);

    plato.dibujarEnMenu();

    naranja.dibujarEnMenu(imgNaranja, naranja_x, y);
    lechuga.dibujarEnMenu(imgLechuga, lechuga_x, y);

    mundoMenu.setEdges();
  }

  void ejecutar() {
    image(fondo, 0, 0);
    musica[0].play();
    mundoMenu.draw();
    mundoMenu.step();
    texto("Verdutti-Frutti", width/2, height/4, 90, fuente);
    texto("Elegí tu personaje moviendo el plato", width/2, height/2+height/5, 30, fuente);
  }
  void captura() {
    //--- Receptor mensajes ---
    receptor.actualizar(mensajes); //  
    receptor.dibujarBlobs(width, height);


    // Eventos de entrada y salida
    for (Blob b : receptor.blobs) {

      if (b.entro) {
        admin.crearPuntero(b);
        println("--> entro blob: " + b.id);
      }
      if (b.salio) {
        admin.removerPuntero(b);
        println("<-- salio blob: " + b.id);
      }
      admin.actualizarPosiciones(b);
      ellipse(b.centroidX * width, b.centroidY * height,30,30);
      //plato.reposicionar(b.centroidX * width, b.centroidY * height);
     
    }
      admin.actualizar(plato);
   
    
  }

  void reiniciar() {
    musica[0].pause();
    musica[0].rewind();

    plato_x = width/2;
    plato_y = height/2;
    
    plato.reposicionar(plato_x, plato_y);
  }

  void activarJuegoNaranja() {
    juegoActivo = juegoNaranja;
    juegoActivo.inicializar();
  }

  void activarJuegoLechuga() {
    juegoActivo = juegoLechuga;
    juegoActivo.inicializar();
  }
}
