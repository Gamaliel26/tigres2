
// importar la libreria
import oscP5.*;
float amp;
float pitch;


// declarar el objeto osc

OscP5 osc;

void setup() {
  size( 800, 600 );
  
  //inicializar el objeto osc
  
  osc = new OscP5(this, 12345);
}

void draw() {
  
  background(255);
  
}

void oscEvent( OscMessage m){
  
  if(m.addrPattern().equals("/amp")){
    
    amp = m.get(0).floatValue();
    println("amp: " + amp);
  
  }
  
  if(m.addrPattern().equals("/pitch")){
    
    pitch = m.get(0).floatValue();
    //println("pitch: " + pitch);
  
  }

}
