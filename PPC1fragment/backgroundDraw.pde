class bg {
  //just a class to draw a smiley face in the back
  void drawBackground() {
    image(myImage, 0, 0);
    myImage.loadPixels();
  }
  void display() {
    drawBackground();
  }
  
 /* void doBrightness(){
   for (int x = 0; x < myImage.width; x++ ) {
      for (int y = 0; y < myImage.height; y++ ) {
        int loc = x + y*myImage.width;
        
        
        
      float distance = dist(x, y, xPosition, yPosition);
       
      float r = red  (myImage.pixels[loc]);
      float g = green(myImage.pixels[loc]);
      float b = blue (myImage.pixels[loc]);
        
      float adjustBrightness = map(distance, 0, 50, 8, 0);
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;
      
       // Constrain RGB to between 0-255
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);

      // Make a new color and set pixel in the window
      color c = color(r, g, b);
      myImage.pixels[loc] = c;
      }
    }
    updatePixels();
 }*/
}
