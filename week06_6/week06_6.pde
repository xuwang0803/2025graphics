//week06_6
//慢慢組合出機器手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);

  fill(252,131,77);
  pushMatrix();
    
  box(50,200,25);//step03手臂
  pushMatrix();
    translate(x,y);//step03掛到手臂上，觀察到0,-100
    if(mousePressed) rotateZ(radians(frameCount));//step02把旋轉加入
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
  
