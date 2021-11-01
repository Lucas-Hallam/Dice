int frameWidth = 500;
int frameHeight = 500;
Balloon[] Balloons = new Balloon[1000];
color[] BalloonColors = new color[1000];
int maxI = 0;
boolean on = false;
void setup() {
  size(500, 500);
  textSize(20);
  strokeWeight(10);
  stroke(0);
  fill(0);
  text("Off", 50, 50);
  noStroke();
}
void draw() {
  if (on == true) {
    background(200);
    strokeWeight(10);
    stroke(0);
    fill(0);
    text("On", 50, 50);
    noStroke();
    int balloonsIn = 0;
    for(int i = 0; i < maxI; i++) {
      if (Balloons[i].inBalloon(mouseX, mouseY) == true) {
        Balloons[i].inflate(1);
        if (Balloons[i].outsideFrame() == true) {
          Balloons[i].pop();
        }
        balloonsIn += 1;
      }
      Balloons[i].show();
      if (Balloons[i].inBalloon(50, 50) == true) {
        strokeWeight(10);
        stroke(0);
        fill(0);
        text("On", 50, 50);
        noStroke();
      }
    }
    if (balloonsIn == 0) {
      BalloonColors[maxI] = color((float)(256*Math.random()),(float)(256*Math.random()),(float)(256*Math.random()),(float)(256*Math.random()));
      Balloons[maxI] = new Balloon(mouseX, mouseY,BalloonColors[maxI]);
      maxI += 1;
      strokeWeight(10);
      stroke(0);
      fill(0);
      text("On", 50, 50);
      noStroke();
    }
  } else {
    background(200);
    for(int i = 0; i < maxI; i++) {
      Balloons[i].show();
    }
    strokeWeight(10);
    stroke(0);
    fill(0);
    text("Off", 50, 50);
    noStroke();
  }
}
void mousePressed() {
  if (on == false) {
    on = true;
  } else {
    on = false;
  }
}
