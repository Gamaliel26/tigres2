/*
 Alumnos: Olavarría Santiago | Paoletti Jade | Piga Gamaliel.
 Comisión: Prof. Lisandro.
 Link video:
 */

PGraphics capa, capa2, capa3;

Fondo fondo;
Figura figura;


void setup() {
  size(800, 600);

  figura = new Figura();
  fondo = new Fondo();
}
void draw() {

  fondo.dibujar();
  figura.dibujar();
}
