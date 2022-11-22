PVector pos, vel, acc;
float w, h;

void setup() {
size(640, 640);
pos = new PVector(width/2, width/2);
vel = new PVector(3,2);
acc = new PVector(0,0);

w = 100;
h = 100;

}

void draw() {
  background(255);
  noStroke();
  colorMode(HSB);
  fill(0, 255, 255);
 ellipse(pos.x, pos.y, w, h);
  
  // borda inferior
  if(pos.x+w/2 >height || pos.x-w/2 < 0) {
    vel.x *= -1;
  }
  
  // borda superior
  if(pos.y+w/2 > width || pos.y-h/2 < 0) {
    vel.mult(1);
    vel.y *= -1;
  }
   
  pos.add(vel);
  vel.add(acc);
  
}
