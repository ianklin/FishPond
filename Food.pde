class Food{
  PImage sprite;
  float x, y, w, h;
  public Food(){
    sprite = food;
    x = mouseX;
    y = mouseY;
    w = 24.5;
    h = 32;
  }
  public void show(){
    image(sprite, x, y, w, h);
  }
}
