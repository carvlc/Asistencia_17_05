//cuando llegue a 360 de nuevo a 0
// r * sin()
// r * cos()
GameObject player;
GameObject fireBall;
GameObject fireball;
float angulo;
float orbitaX;
float orbitaY;
float r;

public void setup(){
  size(400,400);
  player = new GameObject("data/player-luigi.png", 40,60, width/2, height/2);
  fireBall = new GameObject("data/fire.png", 20,20, width/2, height/3);
  fireball = new GameObject("data/fire.png", 20,20, width/2, height/3);
  angulo = 0;
  r = 50;
}

public void draw(){
  background(255);
  player.posicion.x = mouseX;
  player.posicion.y = mouseY;
  
  orbitaX = player.posicion.x + r * cos(angulo);
  orbitaY = player.posicion.y + r * sin(angulo);
  
  fireBall.posicion.x = orbitaX;
  fireBall.posicion.y = orbitaY;
  player.display();
  fireBall.display();
  if (angulo >= 6){
  angulo = 0;
  }
  angulo += .05;
  println(angulo);
}
