class Balloon {
  int myX, myY, mySize;
  boolean popped;
  color myC;
  Balloon(int x, int y, color c) {
    myX = x;
    myY = y;
    mySize = 25;
    myC = c;
    popped = false;
  }
  void inflate(int s) {
    if (popped == false) {
    mySize=mySize+s;
    }
  }
  void show() {
    fill(myC);
    ellipse(myX,myY,mySize,mySize);
  }
  void pop() {
    popped = true;
    mySize = 0;
  }
  boolean outsideFrame() {
    if (myX-mySize/2 < 0) {
      return true;
    } else if (myX+mySize/2 > frameWidth) {
      return true;
    } else if (myY-mySize/2 < 0) {
      return true;
    } else if (myY+mySize/2 > frameHeight) {
      return true;
    } else {
      return false;
    }
  }
  boolean inBalloon(float x, float y) {
    if (((int)(x)-myX)*((int)(x)-myX)+((int)(y)-myY)*((int)(y)-myY) < mySize*mySize) {
      return true;
    } else {
      return false;
    }
  }
  
}
