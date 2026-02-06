public int animation = 1;
public int s = 5;
public void setup(){
  size(4048,4048);
  frameRate(20);
}
public void sierpinski(int x, int y, int len) {
  if (len <= s) {triangle(x,y,x+(len/2),y-len,x+len,y);}
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+(len/2),y,len/2);
    sierpinski(x+(len/4),y-(len/2),len/2);
  }
}
void draw() {
  if (animation > 4048) {noLoop();}
  animation = animation +5;
  fill(animation/5,100,100);
  sierpinski(0, animation, animation);
}
void keyPressed() {
  if (key == 'f') {s = s * 2;}
  if (s > 4048) {s = 4048;}
  if (key == 'd') {s = s / 2;}
  if (s < 5) {s = 5;}
}
