PImage rightArrow;
int days = 7;
int weeks;
int imageSize = 50;
int textHeight = 100;
float daySizeX,daySizeY;
float paddingX = 50;
float paddingY = 100;
String month = "March";
Day[][] Days;

void setup() {
  size(1000, 600);
   if (month == "Febuary")
    weeks = 4;
  else
    weeks = 5;
  daySizeX = (width-2*paddingX)/days;
  daySizeY = (height-2*paddingY)/weeks;
  Days = new Day[days][weeks];
}


void draw() {  
  textSize(60);
  text(month + "/XOXX", paddingY, textHeight);
  //image(rightArrow, width-paddingX-imageSize, textHeight-imageSize/2 - 10, imageSize, imageSize);
  float y = paddingY;
  for (int i=0; i<weeks; i++) { 
    float x = paddingX;
    for (int j = 0; j<days; j++) {


        fill(255);
      rectMode(CORNERS);
      rect(x, y+daySizeY, x+daySizeX, y+daySizeY*2);
      //Days[i][j] = Day(x,y,x+daySizeX,y+daySizeY*2);
      x += daySizeX;
      
    }
    y += daySizeY;
  }
}
