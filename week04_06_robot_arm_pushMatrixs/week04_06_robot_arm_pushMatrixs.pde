//week04_06_robot_arm_pushMatrix
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  pushMatrix();
    translate(mouseX,mouseY);
    rotate(radians(frameCount));
    sphere(100);
  popMatrix();
}
