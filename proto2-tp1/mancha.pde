class Mancha{
  float x , y;
  float tam; 
  color colorM;
  float dir , vel;
  int frame;
  PImage imgManchas;
  
  Mancha(PImage imgManchas , float x , float y, float tam, color colorM){
    this.imgManchas = imgManchas;
    this.x = x;
    this.y = y;
    this.tam = tam;
    this.colorM = colorM;
  }
  
  void dibujar(){
    push();
    
    fill(colorM);
    rectMode(CENTER);
    rect(x , y , tam , tam);
    pop();
  }
  
  void mover(float haciaDerecha, float haciaAbajo){
    this.x = this.x + haciaDerecha;
    this.y = this.y + haciaAbajo;
  }
}
