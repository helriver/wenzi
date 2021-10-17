float Px=0, Py=0;
PFont font;
int t=0;
String s = "I’ve seen things you people wouldn’t believe. Attack ships on fire off the shoulder of Orion. I watched c-beams glitter in the darkness near the Tanhauser Gate. All those moments will be lost in time. Like tears, in rain.";
char[] ch = s.toCharArray();

void setup(){
  size(1000,1000);
  background(0);
  font = loadFont("TimesNewRomanPSMT-60.vlw");
}

void draw(){
  frameRate(8);
  float rate;
  char m;
  t++;
  m = ch[(t-1)%(s.length())];
  textFont(font);
  rate = abs(mouseX-Px)+abs(mouseY-Py);
  textSize(map(rate,0,800,30,600));
  //fill(random(100,255));
  fill(map(rate,0,1200,255,0));
  text(m, mouseX, mouseY);
  Px = mouseX;
  Py = mouseY;
}
