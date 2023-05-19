class Alien {
  PShape alien;
  boolean isShooting;
  
  public Alien() {
    alien = createShape();
    alien.beginShape();
    alien.fill(0,255,0);
    alien.noStroke();
    rect(50,50,50,50);
    
   isShooting = false; 
  }
  
  void shoot() {
    
  }
  
  
  
  
  
  
  
  
}
