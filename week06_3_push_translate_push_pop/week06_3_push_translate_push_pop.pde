//week06_3_push_translate_push_pop
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);//把東西，放到畫面中因
  pushMatrix();//第五周教過的MATRIX保護
  translate(x,y);
  if(mousePressed&& mouseButton==RIGHT){
    rotateZ(radians(frameCount));
  }
  translate(-50,0,0);//把棒子往左移一半，讓右端在正中心
  box(100,30,30);//橫的棒子
  popMatrix();//第五周教過的MATRIX保護
}
float x=0,y=0;
void mouseDragged(){
  x += mouseX-mouseY;
  y += mouseY-mouseX;
}
