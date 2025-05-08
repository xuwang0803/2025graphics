// week12_1_gundam_head_body_push_trt_pop
PShape body, head;
PShape uparm1,upuparm1,hand1;
void setup() {
  size(400, 400, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
}
void draw() {
  background(204);
  translate(200, 300);
  sphere(10); // 原點的球

  scale(10, -10, 10);
  
  shape(body, 0, 0);
  pushMatrix();
    translate(0, 22.5);
    rotateY(radians(mouseX-200));
    rotateX(radians(mouseY-60));
    translate(0, -22.5);
    shape(head, 0, 0);
  popMatrix();
  
  pushMatrix();
  shape(upuparm1, 0, 0); // 上上手臂
  pushMatrix();
    translate(-4.1, 19.9); // 再掛回去原本的位置
    rotateZ(radians(mouseX));
    translate(4.1, -19.9); // 把物體的旋轉中心, 放到座標中心
    shape(uparm1, 0, 0); // 上手臂
    pushMatrix();
      translate(-4.5, +16.9);
      rotateX(radians(mouseY));
      translate(4.5, -16.9); // 剛剛把手移到座標中心的移動量
      //translate(mouseX/10.0, -mouseY/10.0); // 一邊移動、一邊找到數值
      //println(mouseX/10.0, -mouseY/10.0); // 印出適合的數值 ex. 4.5, -16.9
      shape(hand1, 0, 0);
      popMatrix();
    popMatrix();
    popMatrix();
}
