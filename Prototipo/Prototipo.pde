/*
 Alumnos: Olavarría Santiago | Paoletti Jade | Piga Gamaliel.
 Comisión: Prof. Lisandro.
 Link video:
 */
import oscP5.*;
float amp, pitch;
float maxAmp=70, minAmp=35, maxPitch=70, minPitch=35;
PImage fondoAzu;

OscP5 osc;



Fondo fondo;
Figura figura;


void setup() {
  size(800, 600);
  background(255);
  frameRate(15);
  fondoAzu = loadImage("mancha0.png");
  image(fondoAzu, 0, 0);

  figura = new Figura();
  fondo = new Fondo();
  osc = new OscP5 (this, 12345);
}
void draw() {

  fondo.dibujar();
  figura.dibujar();
}

void oscEvent( OscMessage m) {
  if (m.addrPattern().equals("/amp")) {

    amp = m.get(0).floatValue();
    println("amp: "+ amp);
  }

  if (m.addrPattern().equals("/pitch")) {

    pitch = m.get(0).floatValue();
    println("pitch:"+ pitch);
  }
}
