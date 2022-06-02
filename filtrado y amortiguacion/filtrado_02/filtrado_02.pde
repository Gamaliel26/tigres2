
float xOrigen;
float xDestino;

float yOrigen;
float yDestino;

float f;

int ruido = 30;


void setup() {

  size(800, 600);
  
  xOrigen = 200;
  yOrigen = 500;
 
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
  
 
  xDestino = mouseX + random(-ruido, ruido);
  yDestino = mouseY + random(-ruido, ruido);
  
  xOrigen = xDestino * (1-f) + xOrigen * f;
  yOrigen = yDestino * (1-f) + yOrigen * f;
  
  fill(255, 0, 0, 155);
  ellipse(xOrigen, yOrigen , 80, 80);
  
  fill(0, 0, 255, 150);
  ellipse(xDestino, yDestino, 40, 40);
  
  
}
