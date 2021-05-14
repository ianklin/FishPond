class Fish{
  float x, y, w, h;
  float speedX;
  float speedY;
  PImage sprite;
  boolean ifRight;
  public Fish(){
    x = random(0, 800);
    y = random(0, 800);
    w = 88.5;
    h = 45.5;
    speedX = random(-10,10);
    speedY = random(-10,10);
    sprite = fishRight;
    ifRight = true;
  }
  public void show(){
    if(ifRight){
      sprite = fishRight;
    } else {
      sprite = fishLeft;
    }
    image(sprite, x - w/2, y - h/2, w, h);
  }
  public void move(){
    x += speedX;
    y += speedY;
    if(x <= 0){
      speedX *= -1;
      ifRight = true;
    }
    if(y <= 0){
      speedY *= -1;
    }
    if(x >= 800){
      speedX *= -1;
      ifRight = false;
    }
    if(y >= 800){
      speedY *= -1;
    }
  }
  public void update(){
    move();
    show();
  }
}
