//week06_5
//慢慢組合出機器手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);//step04放個圓球，當世界中心的參考
  

  fill(252,131,77);
  pushMatrix();//step04新的一組
  translate(x,y);//step05新的轉動
   box(200,50,25);//手肘
  //step03把程式往右縮排
    pushMatrix(); //step03把程式往右縮排
    translate(100,0);//step01把前一步發現的100,0放好
    //if(mousePressed) rotateZ(radians(frameCount));//step03
    rotateZ(radians(frameCount));//step02只轉動
    translate(25,0,0);//往右推，讓左端放中心
  
    box(50,25,50);//小手腕
    popMatrix();
  popMatrix();
}
float x=0,y=0;//會動的位置
void mouseDragged(){
  x +=mouseX-mouseY;
  y += mouseY-mouseY;
  println("x:"+x+"y:"+y);
}
  
