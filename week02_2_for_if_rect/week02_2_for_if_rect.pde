//week02_2_for_if_rect
size(400,400);
background(255);
fill(238);
noStroke();
float s= 400/14;//計算 每個格子的大小
for(int i=0;i<14;i++)//左手i對應y座標
{
  for(int j=0;j<14;j++)//右手j對應x座標
  {
    if((i+j)%2==0)rect(j*s,i*s,s,s);
  }
    
}
