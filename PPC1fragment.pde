// here is a very small fragment for a text animation program
// for the first assignment of Programming and Physical Computing
// you may use it, or just partly, extend, or throw it away and do sth different,
// read from a file, add more interesting interaction, more fonts, effect,
// make an array of words where each one has an own color, let them fade, explode,
// be creative!
// angelika mader november 2021


PFont myFont;

Word[] words;
String[] wordFile;

void setup() {
  size(400, 400);
  myFont = createFont("Arial", 32);
  textFont(myFont);
  wordFile = loadStrings("textFile.txt");

  words = new Word[wordFile.length];

  for (int i = 0; i < wordFile.length; i++) {
    float stringWidth = textWidth(wordFile[i]);
    float stringHeight = textAscent() + textDescent();
    float totalHeight = wordFile.length * stringHeight;
       float stringPosY = (height-totalHeight)/2 + i * stringHeight/2;
           words[i] = new Word(wordFile[i], width/2 - (stringWidth/2), stringPosY + i * stringHeight);
  }
}

void draw() {
  background(#000000);
  line(width/2, 0, width/2, height);
  for(int i = 0; i < wordFile.length; i++){
    words[i].drawLetters();
    words[i].updateWord(mouseX, mouseY);
  }
}
  


void mouseClicked() {  // super simple interaction:
}
