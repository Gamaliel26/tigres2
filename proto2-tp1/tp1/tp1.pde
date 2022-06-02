/*
  Alumnos: Olavarría Santiago | Paoletti Jade | Piga Gamaliel.
  Comisión: Prof. Lisandro.
  Link video: 
*/

Mancha mVio , mCel , mNeg , mNar;

float xorigen , xtope , mover = 1;

int cantManchas = 4;
PImage [] imgManchas = new PImage[cantManchas];

void setup(){
 size(1000 , 800);
 
 xorigen = 0;
 xtope = xorigen + 100;
 
 mVio = new Mancha(imgManchas[0] , xorigen , random(height) , 350 , color(113 , 49 , 138));
 mCel = new Mancha(imgManchas[1] , xorigen , random(height) , 200 , color(209 , 251 , 244));
 
 for (int i = 0; i < imgManchas.length; i++) {
      imgManchas[i] = loadImage("mancha"+i+".png");
    }
}

void draw(){
  background(8 , 34 , 111);
  
  mVio.dibujar();
  mCel.dibujar();
  
  mVio.mover(mover,0);
  if(mVio.x == xtope){
    mover = -1;
  }else if(mVio.x == xorigen){
    mover = +1;
  }
  
  mCel.mover(mover,0);
  if(mVio.x == xtope){
    mover = -1;
  }else if(mVio.x == xorigen){
    mover = +1;
  }
}
