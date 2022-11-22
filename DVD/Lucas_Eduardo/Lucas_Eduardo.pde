PVector posicao,velocidade,aceleracao;
float w,h;


void setup(){
 size(700,600); 
 posicao = new PVector(350,300);
 velocidade = new PVector(6,10);
 aceleracao = new PVector(0,0);
 
 w=100;
 h=100;
 
}
void draw(){
 noStroke();
 background(255);
 colorMode(HSB);
 fill(#5DD5FF);
 
 ellipse(posicao.x,posicao.y,w,h);
 
 if(posicao.y+h/2 > height || posicao.y-h/2 < 0){
  velocidade.y*=-1;
}
if (posicao.x+w/2 > width || posicao.x-w/2 < 0){
 velocidade.x *=-1 ;
}
 posicao.add(velocidade);
 velocidade.add(aceleracao);

}
