void setup() {
  size(1100,600);
}

void draw() {
  textSize(60);
  int padding = 60;
  text("Month XOXX", 0+padding, 100);
  rectMode(CORNERS);
  rect(0+padding, 150, width-padding, height-padding);
}
