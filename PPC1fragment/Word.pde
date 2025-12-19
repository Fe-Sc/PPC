class Word {
  //class to divide the words into individual letters
  String myWord;
  float xPosition, yPosition;
  
  //Instances of letter subclasses
  newLetter [] newletters;
  oldLetter [] oldletters;

  
  Word (String word, float xPosition, float yPosition) {
    myWord = word;
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    newletters = new newLetter [myWord.length()];
    oldletters = new oldLetter [myWord.length()];
    float currentX = xPosition;

    for (int i = 0; i < newletters.length; i++) {
      //repeat all of the letter code for each subclass
      newletters[i] = new newLetter(myWord.charAt(i), currentX, yPosition);
      oldletters[i] = new oldLetter(myWord.charAt(i), currentX, yPosition);
      // shift x for the next letter, makes the placement correct
      currentX += textWidth(str(myWord.charAt(i))) + 5;
    }
  }

  //display the letters
  void drawLetters() {
    if (newLetters) {
      for (int i = 0; i< newletters.length; i++) {
        newletters[i].drawLetter();
      }
    }
    if (!newLetters) {
      for (int i = 0; i< oldletters.length; i++) {
        oldletters[i].drawLetter();
      }
    }
  }
  //feed updated information to letters
  void updateWord(float mx, float my) {
    for (int i=0; i < newletters.length; i++) {
      //feeds updated information to letter class
      newletters[i].updateLetter(mx, my);
      oldletters[i].updateLetter(mx, my);
    }
  }
}
