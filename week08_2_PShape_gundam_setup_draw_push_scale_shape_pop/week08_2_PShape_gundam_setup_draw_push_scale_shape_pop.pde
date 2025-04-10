//week08_2_PShape_gundam_setup_draw_push_scale_shape_pop
//轉動他，要改成互動模式的城市風格
PShape gundam;
void setup(){
  size(400,400,P3D);
  gundam = loadShape("Gundam.obj");
}
void draw(){
  translate(width/2,height/2);
  pushMatrix();
    scale(10,-10,10);
    shape(gundam,0,0);
  popMatrix();
  pushMatrix();
    translate(100,0,10);
    scale(10,-10,10);
    shape(gundam,0,0);
  popMatrix();
}
