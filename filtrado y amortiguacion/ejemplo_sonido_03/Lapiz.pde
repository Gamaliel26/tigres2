



class Lapiz {

  float t;
  float x, y;
  float dir, vel;

  float anguloBase;

  float xAnte, yAnte;

  color c;

  Lapiz() {
    cambiarPosicion();    
    vel = 15;
    t = 20;
    c = color(random(255), random(255), random(255));
  }

  void cambiarPosicion() {
    dir = random( radians( 360 ));
    x = random( width );
    y = random( height );
    xAnte = x;
    yAnte = y;
  }

  void cambiarColor() {

    c = color(random(255), random(255), random(255));
  }

  void dibujar() {

    pushStyle();
    noStroke();
    fill(c);
    /*
    for ( int i=0; i<10; i++ ) {
     float ex = map( i, 0, 10, xAnte, x );
     float ey = map( i, 0, 10, yAnte, y );
     ellipse( ex, ey, t, t );
     }
     */
    ellipse( x, y, t, t );
    popStyle();
  }

  void mover() {

    float dx = vel * cos( dir );
    float dy = vel * sin( dir );

    xAnte = x;
    yAnte = y;

    x += dx;
    y += dy;

    x = (x>width ? x-width : x);
    x = (x<0 ? x+width : x);
    y = (y>height ? y-height : y);
    y = (y<0 ? y+height : y);
  }

  void actualizar( float intensidadEntrada, float derivadaAltura ) {

    //dir = radians( map( alturaEntrada , 0 , 1 , 0 , 360 )) + anguloBase;

    float variacion = derivadaAltura * radians( 10 );

    dir += variacion;

    t = map(intensidadEntrada, 0, 1, MINIMO_TRAZO, MAXIMO_TRAZO );
    vel = t*0.2;

    mover();
  }

  void dibujarTrazoGrande() {
    pushStyle();
    noStroke();
    fill(c);
    ellipse( x, y, 60, 60 );
    popStyle();
  }

  void dibujarTrazoGrande( float valor ) {
    pushStyle();
    noStroke();
    fill(c);
    float d = map(valor, 0, 1, MINIMO_TRAZO, MAXIMO_TRAZO );
    //ellipse( x , y , valor*100 , valor*100 );
    ellipse( x, y, d, d );
    popStyle();
  }
}
