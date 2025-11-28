class Letter {
  test
 char myLetter;
 float xPosition, yPosition;

 color letterColor;
 float mx;
 float my;
 float dx, dy;
 float offsetx = 0;
 float offsety = 0;
 
 Letter (char letter, float xPosition, float yPosition) {
    myLetter = letter;
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    letterColor = color(#FFFFFF);
 }
 
 void drawLetter(){
   float smoothmoves = 0.1;
   float distanceLimit =200;
   float distanceToLetter = sqrt(dx*dx + dy*dy);

   offsetx += (dx - offsetx) * smoothmoves;
   offsety += (dy - offsety) * smoothmoves;
   if (distanceToLetter > 0){
   float limit = min(distanceToLetter, distanceLimit);
   float ratio = limit/distanceLimit;
   offsetx = offsetx*ratio;
   offsety = offsety*ratio;}
   pushMatrix();
   translate(xPosition + offsetx, yPosition + offsety);
   fill(letterColor);
   textSize(40);
   text(myLetter, 0,0);
   popMatrix();
 }
 
 void updateLetter(float mx, float my){
    dx = xPosition - mx;
    dy = yPosition - my;
    
 }
 
}
