void drawDayScreen(int month, int day) {
  int padding = 70;
  textSize(40);
  text(monthsList[month] + " " + day, 100,93);
  rectMode(CORNERS);
  rect(0+padding, 120, width-padding, height-padding);
  rect(0+padding, 470, width-padding, height-padding);
  
  textSize(20);
  text("Save Changes?", 760, 91);
  image(checkmark, 900, 65, 40, 40);
  image(xMark, 950, 64, 42, 42);
  
  rect(93,480, 570,520);
}

//6d8cbd
