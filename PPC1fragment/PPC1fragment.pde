//Extended version of our week 3 program
//Made by Fernando Schintz and Koen Stroo
//2 New subclasses have been made for the text, switch between which gets drawn by clicking
//The letters change into the opposite color of the pixel behind it

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

void draw() { //draws the background and calculates the position of the letters each frame, also loads the image pixels
  
  back.display();
  back.colorTest();
  drawAll();
}

void drawAll() {
  for (int i = 0; i < wordFile.length; i++) {
    words[i].drawLetters();
    words[i].updateWord(mouseX, mouseY);
  }
 
}
  //switch between letters from subclass 1 and 2 being drawn
  void mousePressed(){
    newLetters = !newLetters;
    println("clicked");
  }
