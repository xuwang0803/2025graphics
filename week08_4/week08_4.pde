//week08_4
//慢慢把切割開的模型
PShape body,head;
void setup(){
  
  size(400,400,P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
}
void draw(){
  background(255);
  translate(width/2,height/2+100);
  sphere(10);
  scale(10,-10,10);
  pushMatrix();
    //rotate(radians(frameCount));
    translate(x/10,y/10);//要放在小x,y的座標
    shape(head,0,0);
  popMatrix();
  shape(body,0,0);
}
float x=0,y=0;
void mouseDragged(){
  x += mouseX-pmouseX;
  y += mouseX-pmouseY;
}
