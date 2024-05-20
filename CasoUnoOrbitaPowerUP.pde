
float angulo;
float orbitaX;
float orbitaY;
float r;
GameObject player;
GameObject powerup;
GameObject[] fireballs;
boolean yaColisiono;

public void setup(){
  size(400,400);
  player = new GameObject("data/voltorb.png", 40,40, width/2, height/2);
  powerup = new GameObject("data/pokeball2.png",20,20,width/2, height-100);
  fireballs = new GameObject[10];
  for(int i = 0 ; i < fireballs.length; i++){
    fireballs[i] = new GameObject("data/pokeball1.png", 20,20, width/2, height/2);
  }
  angulo = 0;
  r = 50;
  yaColisiono = false;
}

public void draw(){
  background(255);
  player.posicion.x = mouseX;
  player.posicion.y = mouseY;
  player.display();
  powerup.display();
  
  if(powerup.colisionar(player, yaColisiono)){
    yaColisiono = true;
    powerup.hide();
    for(int i = 0; i < fireballs.length; i++){
      fireballs[i].posicion.x = player.posicion.x + r * cos(angulo+i*0.62) ;
      fireballs[i].posicion.y = player.posicion.y + r * sin(angulo+i*0.62);
      fireballs[i].display();
    }
  }
  angulo += 0.04;
}
