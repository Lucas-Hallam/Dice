// Draw a single dice class
class Die {
  int value, rotated;
  float myX, myY;
  color myC;
  Die(float x, float y) {
    // Create a dice at (x,y) top left
    myX = x;
    myY = y;
  }
  void colorChange(color c) {
    myC = c;
  }
  void roll() {
    // Roll the dice
    rotated = (int) (Math.random()*2);
    value = (int) (Math.random()*6)+1;
  }
  void show() {
    // Draw the dice with a random orientation for 2,3 and 6
    fill(myC);
    rect(myX, myY, 65, 65, 10);
    fill(0);
    if (value == 1) {
      ellipse(myX+32.5, myY+32.5, 15, 15);
    } else if (value == 2) {
      if (rotated == 0) {
        ellipse(myX+20, myY+20, 15, 15);
        ellipse(myX+45, myY+45, 15, 15);
      } else {
        ellipse(myX+20, myY+45, 15, 15);
        ellipse(myX+45, myY+20, 15, 15);
      }
    } else if (value == 3) {
      if (rotated == 0) {
        ellipse(myX+15, myY+15, 15, 15);
        ellipse(myX+32.5, myY+32.5, 15, 15);
        ellipse(myX+50, myY+50, 15, 15);
      } else {
        ellipse(myX+50, myY+15, 15, 15);
        ellipse(myX+32.5, myY+32.5, 15, 15);
        ellipse(myX+15, myY+50, 15, 15);
      }
    } else if (value == 4) {
        ellipse(myX+17.5, myY+17.5, 15, 15);
        ellipse(myX+17.5, myY+47.5, 15, 15);
        ellipse(myX+47.5, myY+17.5, 15, 15);
        ellipse(myX+47.5, myY+47.5, 15, 15);
    } else if (value == 5) {
        ellipse(myX+15, myY+15, 15, 15);
        ellipse(myX+32.5, myY+32.5, 15, 15);
        ellipse(myX+50, myY+50, 15, 15);
        ellipse(myX+50, myY+15, 15, 15);
        ellipse(myX+15, myY+50, 15, 15);
    } else {
      if (rotated == 0) {
        ellipse(myX+15, myY+15, 15, 15);
        ellipse(myX+15, myY+50, 15, 15);
        ellipse(myX+32.5, myY+15, 15, 15);
        ellipse(myX+32.5, myY+50, 15, 15);
        ellipse(myX+50, myY+15, 15, 15);
        ellipse(myX+50, myY+50, 15, 15);
      } else {
        ellipse(myX+15, myY+15, 15, 15);
        ellipse(myX+50, myY+15, 15, 15);
        ellipse(myX+15, myY+32.5, 15, 15);
        ellipse(myX+50, myY+32.5, 15, 15);
        ellipse(myX+15, myY+50, 15, 15);
        ellipse(myX+50, myY+50, 15, 15);
      }
    }
  }
  int value() {
    // Return the value the dice rolled
    return value;
  }
}
