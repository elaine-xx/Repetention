PImage rightArrow;
int days = 7;
int weeks;
int imageSize = 50;
int textHeight = 100;
float daySizeX, daySizeY;
float paddingX = 50;
float paddingY = 100;
int month = 5;
Day[][] Days;

void setup() {
  size(1000, 600);
  if (month == 2)
    weeks = 4;
  else
    weeks = 5;
  daySizeX = (width-2*paddingX)/days;
  daySizeY = (height-2*paddingY)/weeks;
  Days = new Day[weeks][days];
}


void draw() {  
  textSize(60);
  text(month + "/XOXX", paddingY, textHeight);
  //image(rightArrow, width-paddingX-imageSize, textHeight-imageSize/2 - 10, imageSize, imageSize);
  float y = paddingY;
  for (int i=0; i<weeks; i++) { 
    float x = paddingX;
    for (int j = 0; j<days; j++) {

      Days[i][j] = new Day(x, y, daySizeX, daySizeY);
      Days[i][j].DrawMe();
      x += daySizeX;
    }
    y += daySizeY;
  }
}

//int weekMonthStarter(int year, int month) {
//  int daysSince2023 = 0;
//  boolean leapYear;

//  for (int i = 2023; i < year; i++) {
//    leapYear = (i % 4 == 0) && !(i % 100 == 0);

//    if (leapYear) {
//      daysSince2023 += 366; // If a leap year
//    } else {
//      daysSince2023 += 365;
//    }
//  }

//  if (month > 1)
//    daysSince2023 += 31;

//  if (month > 2) {
//    daysSince2023 += 28;

//    if ((year % 4 == 0) && !(year % 100 == 0))
//      daysSince2023 += 1;
//  }

//  if (month > 3)
//    daysSince2023 += 31;

//  if (month > 4)
//    daysSince2023 += 30;

//  if (month > 5)
//    daysSince2023 += 31;

//  if (month > 6)
//    daysSince2023 += 30;

//  if (month > 7)
//    daysSince2023 += 31;

//  if (month > 8)
//    daysSince2023 += 31;

//  if (month > 9)
//    daysSince2023 += 30;

//  if (month > 10)
//    daysSince2023 += 31;

//  if (month > 11)
//    daysSince2023 += 30;

//  int dayOfTheWeek = (daysSince2023 % 7);

//  return dayOfTheWeek;
//}
