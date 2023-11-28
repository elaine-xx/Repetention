PImage rightArrow, checkmark, xMark;
int a;
String[] monthsList = {"filler", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
import g4p_controls.*;

void setup() {
  size(1100,600);
  rightArrow = loadImage("right-arrow-for-next-month.png");
  checkmark = loadImage("green check.png");
  xMark = loadImage("x mark.png");
  createGUI();
}

void draw() {
  if (false) {
    textSize(60);
    int padding = 60;
    int textHeight = 100;
    text("Month XOXX", 0+padding, textHeight);
    rectMode(CORNERS);
    rect(0+padding, 150, width-padding, height-padding);
    int imageSize = 50;
    image(rightArrow, width-padding-imageSize, textHeight-imageSize/2 - 15, imageSize, imageSize);
  }
  
  if (true) {
    //month, day
    drawDayScreen(9, 8);
  }
  
}
