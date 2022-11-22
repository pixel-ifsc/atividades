PVector posicao, velocidade, aceleracao;
float w,h;
void setup(){
  size(640,640);
  posicao = new PVector(width/2,height/2);
  velocidade = new PVector(0,0);
  aceleracao = new PVector(0,0.2);
  
  w=100;
  h=100;

}
void draw(){
  background(255);
  colorMode(HSB);
  noStroke();
  fill((posicao.y)/500*255,255,255);
  ellipse(posicao.x,posicao.y, 100,100);
  
  // borda inferior
  if (posicao.y+w/2 > height){  
     velocidade.mult(-1);
  }
  posicao.add(velocidade);
  velocidade.add(aceleracao);
  
}
