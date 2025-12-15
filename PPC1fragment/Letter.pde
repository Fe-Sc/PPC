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
 
}
