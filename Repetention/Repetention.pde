PImage rightArrow;

void setup() {
  size(1100,600);
  rightArrow = loadImage("right-arrow-for-next-month.png");
}

void draw() {
  textSize(60);
  int padding = 60;
  int textHeight = 100;
  text("Month XOXX", 0+padding, textHeight);
  rectMode(CORNERS);
  rect(0+padding, 150, width-padding, height-padding);
  int imageSize = 50;
  image(rightArrow, width-padding-imageSize, textHeight-imageSize/2 - 10, imageSize, imageSize);
}

//fdgmdslfkgj
