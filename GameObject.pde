class GameObject{
  PImage sprite;
  PVector posicion;
  
  Colisionador colisionador;
  
  public GameObject(){
  }
  
  public GameObject(String pathSprite, int anchoSprite, int altoSprite, float x, float y){
    this.posicion = new PVector(x,y);
    colisionador = new Colisionador();
    this.colisionador.setAncho(anchoSprite);
    this.colisionador.setAlto(altoSprite);
    this.sprite = loadImage(pathSprite);
    this.sprite.resize(this.colisionador.getAncho(), this.colisionador.getAlto());
    
  }
  
  public void display(){
    imageMode(CENTER);
    image(sprite,posicion.x,posicion.y);
  }
  public void hide(){
    this.posicion.x = -100;
    this.posicion.y = -100;
  }
  public boolean colisionar(GameObject player, boolean yaColisiono){
    if(yaColisiono){
      return true;
    }else{
      return colisionador.verificarColision(player,this);
    }
    
  }
}
