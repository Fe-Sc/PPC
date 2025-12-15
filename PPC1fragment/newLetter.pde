class newLetter extends Letter {

  float time = 0;

  newLetter(char letter, float xPosition, float yPosition) {
    super(letter, xPosition, yPosition);
  }

  void drawLetter() {

    offsety = sin(time) * 5;
    yPosition = yPosition + offsety;
    time = time + 0.05;
    //draw letters
    pushMatrix();
    translate(xPosition + offsetx, yPosition + offsety);
    fill(letterColor);
    textSize(40);
    text(myLetter, 0, 0);
    popMatrix();
  }
}
