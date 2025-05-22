//week14_1_PFont_createFont_textSize_text
size(300,300);
textSize(50);//50號字
text("Hello",10,50);//預設字型
PFont font = createFont("Times New Roman",50);
textFont(font);
text("Hello",10,100);//放下面一點
//print(PFont.list());//列出現在所有可用字型
for(String name:PFont.list())println(name);
