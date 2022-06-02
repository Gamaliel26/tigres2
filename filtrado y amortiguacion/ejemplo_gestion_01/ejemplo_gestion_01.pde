
import oscP5.*; // importacion de libreria

//=======================================
//variables de calibración
float umbralDeRuido = 45;
float f = 0.9;

boolean monitor = true;
//=======================================

OscP5 osc; // declaracion del objeto osc

float amp = 0.0;
float pitch = 0.0;

GestorSenial gestorAmp;

void setup() {
  size( 800, 600 );

  osc = new OscP5(this, 12345); // parametros: puntero a processing y puerto

  //inicialización
  //por defecto el rango es 0-100
  gestorAmp = new GestorSenial( umbralDeRuido, 100, f );

  background(255);
}
void draw() {

  //en cada fotograma hay que actualizar
  gestorAmp.actualizar( amp ); 
  
  gestorAmp.imprimir( 150, 150 );
}

void oscEvent( OscMessage m) {

  if (m.addrPattern().equals("/amp")) {
    amp = m.get(0).floatValue();
    //println("amp: " + amp);
  }

  if (m.addrPattern().equals("/pitch")) {
    pitch = m.get(0).floatValue();
    //println("pitch: " + pitch);
  }
}
