PVector posicao, velocidade, aceleracao;
float w,h;
float hue;
void setup(){
  size(640,640);
  posicao = new PVector(width/2,height/2);
  velocidade = new PVector(2,3);
  aceleracao = new PVector(0,0);
  
  w=100;
  h=100;
  hue+= 1;
}
void draw(){
  background(0);
  noStroke();
  colorMode(HSB);
  fill(hue%255,255,255);
  ellipse(posicao.x,posicao.y, w,h);
  
   colorMode(RGB);
  fill(255,255,255);
  ellipse(posicao.x+15, posicao.y-10, 20, 20);
  ellipse(posicao.x-15, posicao.y-10, 20, 20);
  ellipse(posicao.x, posicao.y+15, 50,20);
  
  fill(0,0,0);
  
  ellipse(posicao.x+15, posicao.y-10, 10, 10);
  ellipse(posicao.x-15, posicao.y-10, 10, 10);
  
  
  if (posicao.x+w/2 > width || posicao.x-h/2 < 0 ){  
     velocidade.x *= -1;
  }
  if (posicao.y+w/2 > height || posicao.y-h/2 < 0 ){  
     velocidade.y *= -1;
  }
  
  
  posicao.add(velocidade);
  velocidade.add(aceleracao);
  
}
