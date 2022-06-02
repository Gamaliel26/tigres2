class Fondo {

  Mancha mVio, mCel, mAzu, mNar, mNeg, mPur, mBla;
  float xorigen, xtope, mover = 1;
  float xorigen2, xtope2;
  float xorigen3, xtope3;
  float tam;
  int cantManchas = 5;
  PImage [] imgManchas = new PImage[cantManchas];

  Fondo () {
    //Movimiento de las manchas

    xorigen = 0;
    xtope = xorigen + 100;
    xorigen2 = width/2 + 300 ;
    xtope2 = xorigen2 + 100;
    xorigen3 = width/2;
    xtope3 = xorigen3 + 100;
    //Cargar imágenes
    for (int i = 0; i < cantManchas; i++) {
      imgManchas[i] = loadImage("mancha"+i+".png");
    }
    //Inicializar manchas
    mAzu = new Mancha(this, imgManchas[0], width/2, height/2, 1000);
    mNar = new Mancha(this, imgManchas[1], width/2+50, 400, random(100,500));
    mVio = new Mancha(this, imgManchas[4], xorigen, random(height/2, height), 700);
    mCel = new Mancha(this, imgManchas[3], xorigen2, random(0, height/2), 850);
    mBla = new Mancha(this, imgManchas[3], 50, 0, 300);
    mNeg = new Mancha(this, imgManchas[3], 600, 550, 550);
    mPur = new Mancha(this, imgManchas[4], xorigen3, 50, 350);
  }

  void dibujar () {

    // Fondo Azul
    //mAzu.dibujar();

    // Mancha Blanco
    if (pitch>40) {

      mBla.dibujar();
    }

    // Mancha Purpura

    if (pitch > 70) {

      mPur.dibujar();
      mPur.mover(mover, 0);
      if (mVio.x == xtope) {
        mover = -1;
      } else if (mPur.x == xorigen3) {
        mover = +1;
      }
    }


    // Mancha Negra
    if (amp>50) {
      mNeg.dibujar();
    }

    // Mancha Naranja

    if (amp>60) {
      mNar.dibujar();
    }

    // Mancha Violeta------------------------------------------->

    if (amp>70) {
      push();
      tint(0,0,250);
      mVio.dibujar();
      mVio.mover(mover, 0);
      if (mVio.x == xtope) {
        mover = -1;
      } else if (mVio.x == xorigen) {
        mover = +1;
      }
      pop();
    }


    // Mancha Celeste------------------------------------------->

    if (amp > 80) {

      mCel.dibujar();
      mCel.mover(mover, 0);
      if (mCel.x == xtope2) {
        mover = -1;
      } else if (mCel.x == xorigen2) {
        mover = +1;
      }
    }
  }
}
