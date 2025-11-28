class Word {

  String myWord;
  float xPosition, yPosition;
  Letter [] letters;

  Word (String word, float xPosition, float yPosition) {
    myWord = word;
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    letters = new Letter [myWord.length()];

    float currentX = xPosition;

    for (int i = 0; i < letters.length; i++) {

      letters[i] = new Letter(myWord.charAt(i), currentX, yPosition);

      // move x for the next letter
      currentX += textWidth(str(myWord.charAt(i))) + 5;
    }
  }

  void drawWord() {
    pushMatrix();
    translate(xPosition, yPosition);
    fill(#FFFFFF);
    textSize(35);
    text(myWord, 0, 0);
    popMatrix();
  }

  void drawLetters() {
    for (int i = 0; i< letters.length; i++) {
      letters[i].drawLetter();
    }
  }

  void updateWord(float mx, float my) {
    for (int i=0; i < letters.length; i++) {
      letters[i].updateLetter(mx, my);
    }
  }
}
