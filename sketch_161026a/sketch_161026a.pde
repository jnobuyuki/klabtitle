String kanjiname = "菊 池 英 明 研 究 室";
String partStringA = "IKUCHI";
String labString = "LAB";
String partStringB = "ORATORY";
char kChar = 'K';
int phase = 0;
PFont font;
int i = 0;
int j = 0;
int k = 0;
float l = 0;

float m = 0;
float n = 0;
color dimColor;


void setup(){
  size(1024, 768);
  background(0);
  stroke(255);
  strokeWeight(3);
  
  //String[] fontList = PFont.list();
  //println(fontList);
  
  font = createFont("Osaka",64,true);
  textFont(font);
  
  fill(0);
  
}

void draw(){
  frameRate(60);
  background(0);
  if(phase < 4){
  stroke(255);
  line(50,384,974,384);
  fill(255);
  text(kanjiname,240,350);
  text(kChar, 170,450);
  text(partStringA,220,450);
  text(labString, 480, 450);
  text(partStringB, 600, 450);
  }
  //noLoop();
  
  if(phase == 0){
    // 漢字名
    // 水平線
    // EnglishName
    fill(0);
    stroke(0);
    rect(50+i,150,950,500);
    i += 10;
    if(i >950){
      phase = 1;
    }
  } else if(phase == 1){
    j +=1;
    if(j> 60){phase = 2;}
  } else if (phase == 2) {
    fill(#F39800);
    text(kChar, 170,450);
    text(labString, 480, 450);
    k += 1;
    if (k > 90){phase = 3;}
    
  } else if( phase == 3){
  l += 1.5;
  fill(#F39800);
  text(kChar, 170,450);
  text(labString, 480, 450);
  
  fill(255-l);
  stroke(255-l);
  text(kanjiname,240,350);
  text(partStringA,220,450);
  text(partStringB, 600, 450);
  line(50,384,974,384);
  
  if(l > 255){phase = 4;}
  } else if (phase == 4){
    
    dimColor = color(243-m,152-n,0);
    fill(dimColor);
    stroke(0);
    text(kChar, 170,450);
    text(labString, 480, 450);
    m+= 2;
    n +=1.26;
    if(m > 250){noLoop();}
  }
  
  

}