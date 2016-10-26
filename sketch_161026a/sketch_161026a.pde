// Initially, making a set of strings.
// I explicitly make "K" and "LAB" strings for changing color later.

String kanjiname = "菊 池 英 明 研 究 室";
String partStringA = "IKUCHI";
String labString = "LAB";
String partStringB = "ORATORY";
char kChar = 'K';

// phrase is a key concept of this script. It can be regarded as a scene.
int phase = 0;

//Font
PFont font;

// Following variables are used to check the timing of phase switch.
int i = 0;
int j = 0;
int k = 0;
float l = 0;

float m = 0;
float n = 0;

// color variable to change the color of "K" and "LAB"
color dimColor;

//setup
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


// within draw function, frame rate is set to 60.
void draw(){
  frameRate(60);
  
  // background becomes black
  background(0);
  
  //from phase 0 to phase 3, all strings are drawn in white.
  // but, some parts of strings are overwritten by later codes.
  if(phase < 4){
  
    // stroke color is white
  stroke(255);
  // horizontal line is drawn in the middle of a display
  line(50,384,974,384);
  //strings are written in white
  fill(255);
  //strings are written
  text(kanjiname,240,350);
  text(kChar, 170,450);
  text(partStringA,220,450);
  text(labString, 480, 450);
  text(partStringB, 600, 450);
  }
  
  if(phase == 0){
    //the following rectangle is used to hiding strings
    // During phase 0, rectangle area becomes smaller and smaller so that
    // strings are shown little by littel.
    fill(0);
    stroke(0);
    rect(50+i,150,950,500);
    i += 10;
    if(i >950){
      // if the rectangle are becomes 0, move to the phase 1
      phase = 1;
    }
  } else if(phase == 1){
    // j is a counter during phase 1
    j +=1;
    // waiting for a second
    // then, move to phase 2
    if(j> 60){phase = 2;}
  } else if (phase == 2) {
    //#F39800 is "orange" to draw "K" and "LAB" in orange
    fill(#F39800);
    text(kChar, 170,450);
    text(labString, 480, 450);
    // k is a counter during phase2
    k += 1;
    // after 1.5 s, move to phase 3
    if (k > 90){phase = 3;}
    
  } else if( phase == 3){
    //l is a counter during phase 3
  l += 1.5;
  // "K" and "LAB" stay in orange
  fill(#F39800);
  text(kChar, 170,450);
  text(labString, 480, 450);
  //but other strings and the horizontal line become dark
  fill(255-l);
  stroke(255-l);
  text(kanjiname,240,350);
  text(partStringA,220,450);
  text(partStringB, 600, 450);
  line(50,384,974,384);
  
  //after 2.9 sec, move to phase 4
  if(l > 255){phase = 4;}
  } else if (phase == 4){
    
    // oragnge strings become dark
    dimColor = color(243-m,152-n,0);
    fill(dimColor);
    stroke(0);
    text(kChar, 170,450);
    text(labString, 480, 450);
    //m and n are counters during phase 4
    m+= 2;
    n +=1.26;
    //after about 2 sec, stop loop.
    if(m > 250){noLoop();}
  }
  
  // to make a movie file, please use the following code
  //saveFrame("frames/######.tiff");

}