class Word {
  //this class is mostly a remnant of the example, but it is still needed for the letter class to function
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
      
      // shift x for the next letter, makes the placement correct
      currentX += textWidth(str(myWord.charAt(i))) + 5;
    }
  }
  
  //display the letters
  void drawLetters() {
    for (int i = 0; i< letters.length; i++) {
      letters[i].drawLetter();
    }
  }

  void updateWord(float mx, float my) {
    for (int i=0; i < letters.length; i++) {
      //feeds updated information to letter class
      letters[i].updateLetter(mx, my);
    }
  }
}
