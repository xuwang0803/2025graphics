//week06_7_push_RRT_many_inside
void setup(){
  size(500,800,P3D);//step00:把視窗變長一點
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);

  fill(252,131,77);
  pushMatrix();
  
  if(mousePressed&&mouseButton==RIGHT) rotateY(radians(frameCount));
  if(mousePressed&&mouseButton==RIGHT) rotateZ(radians(frameCount));
  translate(x,y);
  box(50,200,25);//step03手臂
  pushMatrix();
    translate(0,-100);//step03掛到手臂上，觀察到0,-100
    //if(mousePressed) 
    rotateZ(radians(frameCount));//step02把旋轉加入
    translate(100,0);//把手肘量100,0放入
    box(200,50,25);
  
    pushMatrix();
    translate(100,0);
    rotateZ(radians(frameCount));//step02只轉動
    translate(25,0,0);
    box(50,25,50);//小手腕
      popMatrix();
    popMatrix();
  popMatrix();
}
float x=0,y=0;
void mouseDragged(){
  x += mouseX-pmouseY;
  y += mouseY-pmouseY;
  println("x:"+x+"y:"+y);
}
  
