Bacteria aBacteria;
Bacteria [] colony = new Bacteria[20];
Food aFood;

void setup() {
  size (600, 600);
  aFood = new Food(250, 530);
  aBacteria = new Bacteria();
  for (int i = 0; i<colony.length; i++) {
    colony[i] = new Bacteria();
  }
}

void draw() {
  //background(255);
  aFood.show();
  for (int i = 0; i<colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}
void mouseClicked() {
  aFood.x = mouseX;
  aFood.y = mouseY;
  background(230);
  for ( int i=0; i<colony.length; i++) {
    colony[i].r = (int) (Math.random()*256);
    colony[i].g = (int) (Math.random()*256);
    colony[i].b = (int) (Math.random()*256);
  }
}


class Bacteria {
  int x, y ;
  int r, g, b;


  Bacteria() {
    x = width/2;
    y = height/2;
    r = (int) (Math.random()*256);
    g = (int) (Math.random()*256);
    b = (int) (Math.random()*256);
  }
  void move() {
    int incX, incY;

    if (aFood.x < x) {
      incX = -1;
    } else {
      incX=1;
    }
    if (aFood.y < y) {
      incY = -1;
    } else {
      incY=1;
    }
    x += incX * ((int)(Math.random()*4)-1);
    y += incY * ((int)(Math.random()*4)-1);
  }

  void show() {
    fill(r, g, b);
    ellipse(x, y, 10, 10);
  }
}



class Food {
  int x, y;
  int r, g, b;
  int mySize;
  Food(int _x, int _y) {
    x = _x;
    y = _y;
    r= (int) (Math.random()*256);
    b= (int) (Math.random()*256);
    g=(int) (Math.random()*256);
  }
 
  void show() {
    mySize = 14;
    fill(r, g, b, 30);
    rect(x, y, mySize, mySize);
  }
}
