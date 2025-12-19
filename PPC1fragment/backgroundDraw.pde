class bg {
  //draws the image in the background
  void drawBackground() {
    image(myImage, 0, 0);
    myImage.loadPixels();
  }
  
  
  void display() {
    drawBackground();
    colorTest();
  }
  
 void colorTest(){
    loadPixels();
  // Since we are going to access the image's pixels too
  myImage.loadPixels();  
  
 }
}
