//week02_5_ArrayList_Integer_new_size_get_mouseDragged
ArrayList<Integer> x=new ArrayList<Integer>();//新建資料結構
ArrayList<Integer> y=new ArrayList<Integer>();
PImage img;
void setup()
{
  size(400,400);
  img=loadImage("cute.png");
}//記得把圖檔，向(上周一樣拉到程式碼裡)
void draw()
{
   background(img);
   fill(255,200);//半透明色彩 白色，alpha值是128

   rect(0,0,400,400);//畫超大的四邊形，全部蓋住
   //上面是week02_4，下面用迴圈，從資料結構取出來
   for(int i=1;i<x.size();i++)
   {
      line( x.get(i),y.get(i),x.get(i-1),y.get(i-1));
   }
} 
void mouseDragged()
{
   x.add(mouseX);
   y.add(mouseY);
   
   
}
