//week04_14_sun_earth_moon
//樓下剪貼
PShape sun,earth,moon;
void setup(){
  size(400,400,P3D);
  earth = createShape(SPHERE,30);
  PImage img = loadImage("earth.jpg");
  earth.setTexture(img);
  
  size(400,400,P3D);
  moon = createShape(SPHERE,10);
  img = loadImage("moon.jpg");
  moon.setTexture(img);
  
  size(400,400,P3D);
  sun = createShape(SPHERE,50);
  img = loadImage("sun.jpg");
  sun.setTexture(img);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  shape(sun);//太陽
  rotateY(radians(frameCount));
  pushMatrix();
    translate(150,0);
    rotate(radians(frameCount));
    shape(earth);
    pushMatrix();
      translate(50,0);
      rotateY(radians(frameCount));
      shape(moon);
     popMatrix();
  popMatrix();
}
