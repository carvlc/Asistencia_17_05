class GameObject{
  PImage sprite;
  PVector posicion;
  int anchoSprite;
  int altoSprite;
  
  public GameObject(){}
  
  public GameObject(String pathSprite, int anchoSprite, int altoSprite, float x, float y){
    this.sprite = loadImage(pathSprite);
    this.anchoSprite = anchoSprite;
    this.altoSprite = altoSprite;
    this.posicion = new PVector(x,y);
  }
  
  public void display(){
    imageMode(CENTER);
    image(sprite,posicion.x,posicion.y, anchoSprite, altoSprite);
  }
}
