class Administrador {
  ArrayList <Puntero> punteros;
  FWorld mundoMenu, mundoJuego;

  Administrador(FWorld mundoMenu, FWorld mundoJuego) {
    punteros = new ArrayList<Puntero>();

    this.mundoMenu = mundoMenu;
    this.mundoJuego = mundoJuego;
  }

  void actualizarPosiciones(Blob b) {
    for (int i=punteros.size()-1; i>=0; i--) {
      if (punteros.get(i).id == b.id) {
        punteros.get(i).setTarget(b.centroidX * width, b.centroidY * height);
      }
    }
  }

  void crearPuntero(Blob b) {
    Puntero p = new Puntero (mundoMenu, mundoJuego, b.id, b.centroidX * width, b.centroidY * height, imgGeneral[2]);
    punteros.add(p);
  }

  void removerPuntero(Blob b) {
    for (int i=punteros.size()-1; i>=0; i--) {
      Puntero p = punteros.get(i);
      if (p.id == b.id) {
        p.borrar();
        punteros.remove(i);
        break;
      }
    }
  }

  void actualizarPuntero(Blob b) {
    for (Puntero p : punteros) {
      if (p.id == b.id) {
        p.setTarget(b.centroidX * width, b.centroidY * height);
        break;
      }
    }
  }

  void actualizar(Plato[] lista) {
    for (Puntero p : punteros) {
    //   plato.reposicionarp.x, punteros.get(p.y);
    }
  }

  void actualizar(Plato plato) {
    if (punteros.size()>0)
      plato.reposicionar(punteros.get(0).x, punteros.get(0).y);
  }
}
