//week05_6_pushMatrix_popMatrix_
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  pushMatrix();
  translate(width/2,height/2);//(把下面這坨)移到畫面中心
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  popMatrix();
  //希望在左邊-100的地方，也在轉
  pushMatrix();
  translate(width/2-100,height/2);//(把下面這坨)移到畫面中心
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  popMatrix();
 }
