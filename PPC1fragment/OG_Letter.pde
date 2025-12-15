class oldLetter extends Letter {
  
  oldLetter(char letter, float xPosition, float yPosition){
    super(letter, xPosition, yPosition);
  }
  
  //calculate the distance between the letter and mouse and move letter accordingly
 void drawLetter(){
   float smoothmoves = 0.1; // move constant
   float distanceLimit = 200;
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
  
  
}
