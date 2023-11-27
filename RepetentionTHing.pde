PImage rightArrow;
int days = 7;
int weeks;
int imageSize = 50;
int textHeight = 100;
float daySizeX,daySizeY;
float paddingX = 50;
float paddingY = 100;
int month = 3;
int year = 2023;
Day[][] Days;

void setup() {
  size(1000, 600);
  boolean leapYear = (year % 4 == 0) && (!(year % 100 == 0));
  
   if (month == 2 && !leapYear && (weekMonthStarter(year, month) == 1)) //If not leap year february that starts on monday
    weeks = 4;
  else
    weeks = 5;
  daySizeX = (width-2*paddingX)/days;
  daySizeY = (height-2*paddingY)/weeks;
  Days = new Day[days][weeks];
}


void draw() {  
  int dayStarter = weekMonthStarter(year, month);
  stroke(255);
  textSize(60);
  fill(255);
  text(nameOfMonth(month) + " " + year, paddingY, textHeight);
  //image(rightArrow, width-paddingX-imageSize, textHeight-imageSize/2 - 10, imageSize, imageSize);
  
  int topLeftText = 1;
  textSize(10);
  stroke(0);
  fill(0);
  
  float y = paddingY;
  for (int i=0; i<weeks; i++) { 
    float x = paddingX;
    for (int j = 0; j<days; j++) {


      fill(255);  
      rectMode(CORNERS);
      rect(x, y+daySizeY, x+daySizeX, y+daySizeY*2);
      textSize(20);
      stroke(0);
      fill(0);
      if(lengthOfMonth(year, month) >= topLeftText - dayStarter && topLeftText - dayStarter > 0)
        text(topLeftText - dayStarter, x + 5, y+daySizeY + 20);
      //Days[i][j] = Day(x,y,x+daySizeX,y+daySizeY*2);
      x += daySizeX;
      topLeftText += 1;
    }
    y += daySizeY;
  }
}
