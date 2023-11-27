class Day {
  float x,y,SizeX,SizeY;
  color Colour;
  
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
    rectMode(CORNERS);
    fill(this.Colour);
    rect(this.x, this.y, this.x+this.SizeX, this.y+this.SizeY);
  }
}
