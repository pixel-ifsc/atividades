PVector posicao, velocidade, aceleracao;
float w,h;
void setup(){
  size(640,640);
  posicao = new PVector(width/2,height/2);
  velocidade = new PVector(3,2);
  aceleracao = new PVector(0,0);
  
  w=100;
  h=100;

}
void draw(){
  background(255);
  colorMode(HSB);
  noStroke();
  fill(0,255,255);
  ellipse(posicao.x,posicao.y, 100,100);
  
  // borda inferior
  if (posicao.y+w/2 > width ||posicao.y-w/2 > 0){  
     velocidade.x *= -1;;
  }
   
  if(posicao.y+h/2 > height || posicao.y-h/2 < 0){
    velocidade.mult(1);
    vel.y
  }
  posicao.add(velocidade);
  velocidade.add(aceleracao);
  
}
