void setup() {
  // Draw the window
  size(700,700);
  noLoop();
}
int total;
void draw() {
  // Create total variable
  background(200);
  total = 0;
  // Loop to create 81 dice in a square
  Die[] Dice = new Die[81]
  for (int i = 0;i < 9;i++) {
    for (int j = 0;j < 9;j++) {
      Die[9i+j+1] = new Die(70*i+32.5,70*j+32.5);
      Die[9i+j+1].roll();
      // Show the dice
      Die[9i+j+1].show();
      total += Die[9i+j+1].value();
    }
  }
  // Write the totals below the dice
  textAlign(CENTER, CENTER);
  textSize(15);
  fill(0);
  text("Total: " + total, 350, 675);
  fill(255);
}
void mousePressed() {
  // When mouse if pressed, redraw the dice with new colors and values
  redraw();
}
// Draw a single dice class
public class Die {
  int value, rotated;
  float myX, myY;
  Die(float x, float y) {
    // Create a dice at (x,y) top left
    myX = x;
    myY = y;
  }
  void roll() {
    // Roll the dice
    rotated = (int) (Math.random()*2);
    value = (int) (Math.random()*6)+1;
  }
  void show() {
    // Draw the dice with a random orientation for 2,3 and 6
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
    fill(255);
  }
  int value() {
    // Return the value the dice rolled
    return value;
  }
}
