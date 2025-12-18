class newLetter extends Letter {
  //time function for sime wave
  float time = 0;


  newLetter(char letter, float xPosition, float yPosition) {
    super(letter, xPosition, yPosition);
  }

  void drawLetter() {
    //make letters move in a sine wave pattern
    offsety = sin(time) * 5;
    yPosition = yPosition + offsety;
    time = time + 0.05;
    getColor();
    fill(invertedcolor);
    //draw letters
    pushMatrix();
    translate(xPosition + offsetx, yPosition + offsety);

    textSize(40);
    text(myLetter, 0, 0);
    popMatrix();
  }
}
