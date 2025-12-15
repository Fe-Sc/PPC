class bg {
  //just a class to draw a smiley face in the back
  void drawBackground() {
    image(myImage, 0, 0);
    myImage.loadPixels();
    
  }
      void display() {
        drawBackground();
      }
    }
