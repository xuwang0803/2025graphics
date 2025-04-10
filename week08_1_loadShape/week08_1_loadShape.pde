//week08_1_loadShape
size(400,400,P3D);//要有P3D的
PShape gundam = loadShape("Gundam.obj");
translate(width/2,height/2);
pushMatrix();//備份矩陣
  translate(0,100);
  scale(10,-10,10);
  shape(gundam,0,0);//(2)畫出3D模型
popMatrix();
