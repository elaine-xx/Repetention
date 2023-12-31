PImage rightArrow;
int imageSize = 50;
int textHeight = 100;

float daySizeX,daySizeY;
float paddingX = 50;
float paddingY = 100;

int days = 7;
int weeks;
int month = 2;
int year = 2037;

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
  
  int topLeftText = 1; //Number in the top left of each box when making calendar
  
  textSize(10);
  stroke(0);
  fill(0);
  
  float y = paddingY;
  for (int i = 0; i < weeks; i++) { 
    float x = paddingX;
    for (int j = 0; j < days; j++) {      
      
      if((lengthOfMonth(year, month) >= topLeftText - dayStarter) && (topLeftText - dayStarter > 0))
        Days[j][i] = new Day(x, y, daySizeX, daySizeY, topLeftText - dayStarter);
        
      else
        Days[j][i] = new Day(x, y, daySizeX, daySizeY, 0);
      
      Days[j][i].DrawMe();
      
      topLeftText += 1;
      x += daySizeX;
    }
    y += daySizeY;
  }
}
