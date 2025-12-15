class Letter {
 char myLetter;
 float xPosition, yPosition;

 color letterColor;
 float mx;
 float my;
 float dx, dy;
 float offsetx = 0;
 float offsety = 0;
 //contructor
 Letter (char letter, float xPosition, float yPosition) {
    myLetter = letter;
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    letterColor = color(#FF0000);
 }
 
 //take distance betweeen mouse and letters
 void updateLetter(float mx, float my){
    dx = xPosition - mx;
    dy = yPosition - my;
    
 }
 void doBrightness(){
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
 }
 
}
