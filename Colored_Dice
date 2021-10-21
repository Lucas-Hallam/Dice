void setup() {
  // Draw the window with a background color
  size(700,700);
  noLoop();
}
// How many dice are red, green or blue, remaining dice are white
int blueDieMax = 27;
int greenDieMax = 27;
int redDieMax = 27;
int whiteDieMax = (Math.abs(81-redDieMax-blueDieMax-greenDieMax)+81-redDieMax-blueDieMax-greenDieMax)/2;
// Create a index variable for the number of blue, green, red and white die already placed
int blueDie;
int greenDie;
int redDie;
int whiteDie;
int total;
int blueTotal; 
int greenTotal; 
int redTotal;
int whiteTotal;
double colorDeterminer;
void draw() {
  // Create color specific total variables
  background(200);
  blueDie = blueDieMax;
  greenDie = greenDieMax;
  redDie = redDieMax;
  whiteDie = whiteDieMax;
  total = 0;
  blueTotal = 0; 
  greenTotal = 0; 
  redTotal = 0;
  whiteTotal = 0;
  // Loop to create 81 dice in a square
  for (int i = 0;i < 9;i++) {
    for (int j = 0;j < 9;j++) {
      Die dice = new Die(70*i+32.5,70*j+32.5);
      dice.roll();
      colorDeterminer = Math.random();
      // Determine the cotor of the dice and add their values to the respective totals
      if (colorDeterminer < (double) blueDie/(double) (blueDie+redDie+greenDie+whiteDie)) {
        fill(0,0,255);
        blueDie--;
        blueTotal += dice.value();
      } else if (colorDeterminer < (double) (blueDie+redDie)/(double) (blueDie+redDie+greenDie+whiteDie)) {
        fill(255,0,0);
        redDie--;
        redTotal += dice.value();
      } else if (colorDeterminer < (double) (blueDie+redDie+greenDie)/(double) (blueDie+redDie+greenDie+whiteDie)) {
        fill(0,255,0);
        greenDie--;
        greenTotal += dice.value();
      } else {
        fill(255);
        whiteDie--;
        whiteTotal += dice.value();
      }
      // Show the dice
      dice.show();
      total += dice.value();
    }
  }
  // Write the totals below the dice
  textAlign(CENTER, CENTER);
  textSize(15);
  text("Red Total: " + redTotal + "   Green Total: " + greenTotal + "   Blue Total: " + blueTotal +"   White Total: " + whiteTotal +"   Total: " + total, 350, 675);
}
void mousePressed() {
  // When mouse if pressed, redraw the dice with new colors and values
  redraw();
}
// Draw a single dice class
class Die {
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
  }
  int value() {
    // Return the value the dice rolled
    return value;
  }
}
