PImage rightArrow;
int days = 7;
int weeks;
int imageSize = 50;
int textHeight = 100;
float daySizeX,daySizeY;
float paddingX = 50;
float paddingY = 100;
int month = 12;
int year = 2034;
Day[][] Days;

void setup() {
  size(1000, 600);  
  
   if (weekMonthStarter(year, month) + lengthOfMonth(year, month) > 35) //If total amt of days exceeds five weeks.
    weeks = 6;
  else if(weekMonthStarter(year, month) + lengthOfMonth(year, month) > 28) //If total amt of days exceeds fivefour weeks.
    weeks = 5;
  else
    weeks = 4;
  
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
