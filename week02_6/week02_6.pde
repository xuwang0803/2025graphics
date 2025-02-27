//week02_6
//想要很多段，不要一筆畫
ArrayList<Integer>x,y;//先有兩個還沒準備好的資料結構
ArrayList<ArrayList<Integer>>xx=new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>>yy=new ArrayList<ArrayList<Integer>>();

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
    for(int I=0;I<xx.size();I++)
    {
      ArrayList<Integer>x=xx.get(I);
      ArrayList<Integer>y=yy.get(I);
      for(int i=1;i<x.size();i++)
      {
        line( x.get(i),y.get(i),x.get(i-1),y.get(i-1));
      }
    }
}
void mouseDragged()
{
   x.add(mouseX);
   y.add(mouseY);  
}
void mousePressed()//滑鼠按下去時，建新的資料結構
{
  x=new ArrayList<Integer>(); xx.add(x);
  y=new ArrayList<Integer>(); yy.add(y);
}
