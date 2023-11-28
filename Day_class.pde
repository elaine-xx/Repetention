class Day {
  float x,y,SizeX,SizeY;
  color Colour;
  boolean SelectedOnce,SelectedTwice;
  
  Day(float x,float y,float SizeX,float SizeY){
    this.x = x;
    this.y = y;
    this.SizeX = SizeX;
    this.SizeY = SizeY;
    this.Colour = color(255);
  }
  
  void mouseClicked(){ 
      if (mouseX >= this.x && mouseX <= this.x + this.SizeX && mouseY >= this.y && mouseY <= this.y + this.SizeY){
        this.Colour = color(255,0,0);
      }
  }
  void DrawMe() {
    if (mousePressed == true) { 
      for (int i=0; i<weeks; i++) { 
        for (int j = 0; j<days; j++) {
          if (mouseX >= Days[i][j].x && mouseX <= Days[i][j].x + Days[i][j].SizeX ){
            if (mouseY >= Days[i][j].y + Days[i][j].SizeY && mouseY <= Days[i][j].y + Days[i][j].SizeY*2){
              if (SelectedOnce == false){
                Days[i][j].Colour = color(255,0,0);
              }
              else if (SelectedOnce == true){
                Days[i][j].Colour = color(255);
              }
              //Days[i][j].Colour = color(255,0,0); // Make a clicked once and clicked twice booleans
            }
          }
        }
      }
    }
    else
      this.Colour = color(255);
    fill(this.Colour);
    rectMode(CORNERS);
    rect(this.x, this.y+this.SizeY, this.x+this.SizeX, this.y+this.SizeY*2);

  }
}
