
import oscP5.*;

boolean monitor = false;

float minimaIntensidad = 70;
float maximaIntensidad = 100; 

float minimaAltura = 45;
float maximaAltura = 70; 

float MINIMO_TRAZO = 3;
float MAXIMO_TRAZO = 50;

float maximoPico;

OscP5 osc;
GestorSenial intensidad;
GestorSenial altura;

Lapiz lapiz;

float amp = 0;
float pitch = 0;

boolean antesHabiaSonido = false;

void setup() {
  size( 800, 600 );

  osc = new OscP5(this, 12345);


  intensidad = new GestorSenial( minimaIntensidad, maximaIntensidad );
  altura = new GestorSenial( minimaAltura, maximaAltura );

  lapiz = new Lapiz();

  background( 255 );
}
void draw() {

  //actualizo ingresando los nuevos valores
  intensidad.actualizar( amp );
  altura.actualizar( pitch );


  boolean haySonido = intensidad.filtradoNorm() > 0.2;

  //eventos de inicio y fin del sonido
  boolean empezoElSonido = haySonido && !antesHabiaSonido;
  boolean terminoElSonido = !haySonido && antesHabiaSonido;

  if ( empezoElSonido ) {
    lapiz.cambiarColor();
    lapiz.cambiarPosicion();    
    lapiz.dibujarTrazoGrande();
    maximoPico = 0;
  }
  
  if( terminoElSonido ){
    lapiz.dibujarTrazoGrande( maximoPico );
  }

  //estado de haber sonido
  if ( haySonido ) {
    lapiz.actualizar( intensidad.filtradoNorm(), altura.derivadaNorm() );
    lapiz.dibujar();
    
    maximoPico = max( maximoPico , intensidad.filtradoNorm() ); 
  }

  antesHabiaSonido = haySonido;

  if ( monitor ) {
    //muestra la señal en pantalla
    intensidad.imprimir(100, 100 );
    altura.imprimir(100, 250 , 500 , 100 ,  false, true , false , false);
  }
}
void  oscEvent (OscMessage m) {

  if (m.addrPattern().equals("/amp")) {
    amp = m.get(0).floatValue();
  } else if (m.addrPattern().equals("/pitch")) {
    pitch = m.get(0).floatValue();
  }
}
