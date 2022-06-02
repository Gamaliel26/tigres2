
float xOrigen;
float xDestino;

float y;

float f;

void setup() {

  size(800, 600);
  
  xOrigen = 200;
  xDestino = 500;
  
  y = height/2;
  
  f = 0.9;
 

}

void draw() {

  background(255);
  
  // nuevaPosicion = destino * (1 - factorAmortiguacion) + origen * factorAmortiguacion
  // factorAmortiguacion 0-1
  
  // factorAmortiguacion = 1 --> 100%
  // nuevaPosicion = destino * (1 - 1) + origen * 1
  // nuevaPosicion = destino * 0 + origen * 1
  
  // factorAmortiguacion = 0 --> 0%
  // nuevaPosicion = destino * (1 - 0) + origen * 0
  // nuevaPosicion = destino * 1 + origen * 0
  
  // factorAmortiguacion = 0.9 --> 90%
  // nuevaPosicion = destino * (1 - 0.9) + origen * 0.9
  // nuevaPosicion = destino * 0.1 + origen * 0.9
  
 
  //xOrigen = xDestino;
  
  xOrigen = xDestino * (1-f) + xOrigen * f;
  
  fill(255, 0, 0, 155);
  ellipse(xOrigen, y , 40, 40);
  
  fill(0, 0, 255, 150);
  ellipse(xDestino, y , 80, 80);
  
  
}
