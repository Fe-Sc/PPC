// here is a very small fragment for a text animation program
// for the first assignment of Programming and Physical Computing
// you may use it, or just partly, extend, or throw it away and do sth different,
// read from a file, add more interesting interaction, more fonts, effect,
// make an array of words where each one has an own color, let them fade, explode,
// be creative!
// angelika mader november 2021

boolean newLetters = false;
PFont myFont;
PImage myImage;
bg back;
Word[] words;
String[] wordFile;

void setup() {
  size(1050, 600);
  myFont = createFont("Arial", 32);
  myImage = loadImage("Quandale.jpg");
  myImage.loadPixels();
  textFont(myFont);
  wordFile = loadStrings("textFile.txt");
  back = new bg();
  words = new Word[wordFile.length];
  //Correctly place the words, no matter how many strings/rows there are
  for (int i = 0; i < wordFile.length; i++) {
    float stringWidth = textWidth(wordFile[i]);
    float stringHeight = textAscent() + textDescent();
    float totalHeight = wordFile.length * stringHeight;
    float stringPosY = (height-totalHeight)/2 + i * stringHeight/2;
    words[i] = new Word(wordFile[i], width/2 - (stringWidth/2), stringPosY + i * stringHeight);
  }
}

void draw() { //draws the background and calculates the position of the letters each frame
  back.display();
  drawAll();
}

void drawAll() {
  for (int i = 0; i < wordFile.length; i++) {
    words[i].drawLetters();
    words[i].updateWord(mouseX, mouseY);
  }
 
}

  void mousePressed(){
    newLetters = !newLetters;
    print("clicked");
  }
