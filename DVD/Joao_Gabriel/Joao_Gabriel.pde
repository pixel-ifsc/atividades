PImage img;
PVector pos, vel, acc;
float w, h, hue;

void setup() {
  size(640, 640);
  pos = new PVector(width/2, width/2);
  vel = new PVector(3,2);
  acc = new PVector(0,0);
  
  float ratio = 503/256.0;
  w = 75*ratio;
  h = 75;
  hue = random(0, 255);
  
  img = loadImage("DVD_logo.png");
  
  colorMode(HSB);
}

void draw() {
  // Bordas horizontais
  if (pos.x+w >= width || pos.x <= 0) {
    vel.x *= -1;
    hue = random(0, 255);
  }
  
  // Bordas verticais
  if (pos.y+h >= height || pos.y <= 0) {
    vel.y *= -1;
    hue = random(0, 255);
  }
  
  pos.add(vel);
  vel.add(acc);
  
  background(0);
  image(img, pos.x, pos.y, w, h);
  
  loadPixels();
  for (int i = int(pos.x); i < pos.x+w; i++) {
    for (int j = int(pos.y); j < pos.y+h; j++) {
      int index = j*width+i;
      if (index < width*height) {
        pixels[index] = color(hue, 255, brightness(pixels[index]));
      }
    }
  } 
  updatePixels();
}
