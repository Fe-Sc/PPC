class Letter {
  char myLetter;
  float xPosition, yPosition;

  color lettercolor;
  color invertedcolor;
  float mx;
  float my;
  float dx, dy;
  float offsetx = 0;
  float offsety = 0;
  //constructor
  Letter (char letter, float xPosition, float yPosition) {
    myLetter = letter;
    this.xPosition = xPosition;
    this.yPosition = yPosition;
  }
  //function to get and invert the color of the image at the position of the letter
  void getColor() {
    lettercolor = myImage.get(int(xPosition+offsetx), int(yPosition+offsety));
    float r = red(lettercolor);
    float g = blue(lettercolor);
    float b = green(lettercolor);
    invertedcolor = color(255 - r, 255 - b, 255 - g);
  }

  //take distance betweeen mouse and letters
  void updateLetter(float mx, float my) {
    dx = xPosition - mx;
    dy = yPosition - my;
  }
}
