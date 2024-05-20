class Colisionador{
  private int alto;
  private int ancho;
  
  public Colisionador(){}
  
  public boolean verificarColision(GameObject player, GameObject powerup){
    boolean colisiona = true;
    
    if(player.posicion.x-10 > powerup.posicion.x + powerup.colisionador.getAncho()){
      colisiona = false;
    }
    if(player.posicion.x + player.colisionador.getAncho()< powerup.posicion.x+10){
      colisiona = false;
    }
    if(player.posicion.y-10 > powerup.posicion.y + powerup.colisionador.getAlto()){
      colisiona = false;
    }
    if(player.posicion.y + player.colisionador.getAlto() < powerup.posicion.y+10){
      colisiona = false;
    }
    
    return colisiona;
  }
  
  public void setAlto(int alto){
    this.alto = alto;
  }
  
  public int getAlto(){
    return this.alto;
  }
  
  public void setAncho(int ancho){
    this.ancho = ancho;
  }
  
  public int getAncho(){
    return this.ancho;
  }
}
