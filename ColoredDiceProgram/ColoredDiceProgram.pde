void setup() {
  // Draw the window with a background color
  size(700,700);
  noLoop();
  for (int i = 0;i < 9;i++) {
    for (int j = 0;j < 9;j++) {
      Dice[9*i+j]= new Die(70*i+32.5,70*j+32.5);
    }
  }
}
// How many dice are red, green or blue, remaining dice are white
color blue = color(0,0,255);
color red = color(255,0,0);
color green = color(0,255,0);
color white = color(255,255,255);
int blueDieMax = 30;
int greenDieMax = 20;
int redDieMax = 20;
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
Die[] Dice = new Die[81];
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
      Dice[9*i+j].roll();
      colorDeterminer = Math.random();
      // Determine the color of the dice and add their values to the respective totals
      if (colorDeterminer <= (double) blueDie/(blueDie+redDie+greenDie+whiteDie)) {
        Dice[9*i+j].colorChange(blue);
        blueDie--;
        blueTotal += Dice[9*i+j].value();
      } else if (colorDeterminer <= (double) (blueDie+redDie)/(blueDie+redDie+greenDie+whiteDie)) {
        Dice[9*i+j].colorChange(red);
        redDie--;
        redTotal += Dice[9*i+j].value();
      } else if (colorDeterminer <= (double) (blueDie+redDie+greenDie)/(blueDie+redDie+greenDie+whiteDie)) {
        Dice[9*i+j].colorChange(green);
        greenDie--;
        greenTotal += Dice[9*i+j].value();
      } else {
        Dice[9*i+j].colorChange(white);
        whiteTotal += Dice[9*i+j].value();
        whiteDie--;
      }
      // Show the dice
      Dice[9*i+j].show();
      total += Dice[9*i+j].value();
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
      
