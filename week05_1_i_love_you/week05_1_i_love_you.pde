//week05_1_i_love_you
size(300,300);//大小300*300
stroke(255,0,0);//紅色線條
for(int xx=0;xx<300;xx++){//大的X 0..300
   for(int yy=0;yy<300;yy++){//大的Y 0.300
     float x = (xx-150)/100.0;
     float y = -(yy-150)/100.0;//減一半、除100
          //0...300變-150....150
    float d = x*x+y*y-1;
    if(d*d*d-x*x*y*y*y<0) point(xx,yy);
  }
}
