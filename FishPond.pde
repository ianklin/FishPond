PImage fishLeft;
PImage fishRight;
PImage food;
Fish fish1;
ArrayList<Food> foodList;
void setup(){
  size(800,800);
  String filePath = sketchPath();
  fishLeft = loadImage(filePath + "/fishLeft.png");
  fishRight = loadImage(filePath + "/fishRight.png");
  food = loadImage(filePath + "/fruit8.png");
  fish1 = new Fish();
  foodList = new ArrayList<Food>();
}
void draw(){
  background(135,206,235);
  fish1.update();
  for(int s = 0; s < foodList.size(); s++){
    foodList.get(s).show();
  }
}
public float distance(Fish a, Food b){
  float distanceX;
  float distanceY;
  distanceX = a.x - b.x; 
  distanceY = a.y - b.y;
  return sqrt(distanceX*distanceX + distanceY*distanceY);
}
void mousePressed(){
  foodList.add(new Food());  
}
