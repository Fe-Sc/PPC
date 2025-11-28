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
 //calculate the distance between the letter and mouse and move letter accordingly
 void drawLetter(){
   float smoothmoves = 0.1; // move constant
   float distanceLimit =200;
   float distanceToLetter = sqrt(dx*dx + dy*dy);

   offsetx += (dx - offsetx) * smoothmoves;
   offsety += (dy - offsety) * smoothmoves;
   if (distanceToLetter > 0){
   float limit = min(distanceToLetter, distanceLimit); // if outside the range distance = 200, less if inside range
   float ratio = limit/distanceLimit; //if outside range ratio = 1, less if inside range
   offsetx = offsetx*ratio; //make it move less if mouse is close
   offsety = offsety*ratio;}
   //draw letters
   pushMatrix();
   translate(xPosition + offsetx, yPosition + offsety);
   fill(letterColor);
   textSize(40);
   text(myLetter, 0,0);
   popMatrix();
 }
 //take distance betweeen mouse and letters
 void updateLetter(float mx, float my){
    dx = xPosition - mx;
    dy = yPosition - my;
    
 }
 
}
