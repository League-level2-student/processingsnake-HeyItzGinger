
// 1. Follow the recipe instructions inside the Segment class.

// The Segment class will be used to represent each part of the moving snake.
class Segment {
int X;
int Y;
  //2. Create x and y member variables to hold the location of each segment.

  // 3. Add a constructor with parameters to initialize each variable.
public Segment(int X, int Y){
 this.X = X;
 this.Y = Y;

}

  // 4. Add getter and setter methods for both the x and y member variables.
public int getX(){
  return X;
}
public void setX(int X){
  this.X = X;
}
public int getY(){
  return Y;
}
public void setY(int Y){
  this.Y = Y;
}
}
// 5. Create (but do not initialize) a Segment variable to hold the head of the Snake
Segment s;


// 6. Create and initialize a String to hold the direction of your snake e.g. "up"
String Direction = "up";


// 7. Create and initialize a variable to hold how many pieces of food the snake has eaten.
// give it a value of 1 to start.
int food = 1;


// 8. Create and initialize foodX and foodY variables to hold the location of the food.


// (Hint: use the random method to set both the x and y to random locations within the screen size (500 by 500).)

int foodX = ((int)random(50)*10);
int foodY = ((int)random(50)*10);


void setup() {

  // 9. Set the size of your sketch (500 by 500).

  size(500, 500);


  // 10. initialize your head to a new segment.
s = new Segment(250, 250);

  // 11. Use the frameRate(int rate) method to set the rate to 20.
  frameRate(20);
}


void draw() {

  background(0);


  //12. Call the manageTail, drawFood, drawSnake, move, and collision methods.
  manageTail();
  drawFood();
  drawSnake();
  move();
  collision();
}


// 13. Complete the drawFood method below. (Hint: each piece of food should be a 10 by 10 rectangle).

void drawFood() {
  rect(foodX, foodY, 10, 10);
}


//14. Draw the snake head (use a 10 by 10 rectangle)

void drawSnake() {
  rect(s.getX(), s.getY(), 10, 10);

  //test your code
}


// 15. Complete the move method below.

void move() {
  


  // 16. Using a switch statement, make your snake head move by 10 pixels in the correct direction.
  //This is an incomplete switch statement:
 int o = s.getY();
 int l = s.getX();
  switch(Direction) {
  case "up":
    s.setY(o-10);
    break;
  case "down":
    s.setY(o+10);
    break;
  case "left":
   s.setX(l-10);
    break;
  case "right":
   s.setX(l+10); 
    break;
  }
  


  // 17. Call the checkBoundaries method to make sure the snake head doesn't go off the screen.
  checkBoundaries();
}


// 18. Complete the keyPressed method below. Use if statements to set your direction variable depending on what key is pressed.

void keyPressed() {
  if(keyCode == UP && !Direction.equals("down")){
    Direction = "up";
  }
  else if(keyCode == DOWN && !Direction.equals("up")){
    Direction = "down";
  }
  else if(keyCode == LEFT && !Direction.equals("right")){
    Direction = "left";
  }
  else if(keyCode == RIGHT && !Direction.equals("left")){
    Direction = "right";
  } 
}



// 19. check if your head is out of bounds (teleport your snake head to the other side).
void checkBoundaries() {
  int i = s.getX();
  int g = s.getY();
  if(i > width){
    s.setX(0);
  }
  else if(i < 0){
    s.setX(width);
  }
  else if(g > height){
    s.setY(0);
  }
  else if(g < 0){
    s.setY(height);
  }
}



//20. Make sure that the key for your current direction’s opposite doesn’t work(i.e. If you’re going up, down key shouldn’t work)



// 21. Complete the missing parts of the collision method below.

void collision() {

  // If the segment is colliding with a piece of food...
     // Increase the amount of food eaten and set foodX and foodY to new random locations.
     int m = s.getX();
     int j = s.getY();
     if(foodX == m && foodY == j){
       foodX = ((int)random(50)*10);
       foodY = ((int)random(50)*10);
       food++;
     }
     else {
     }
}



/**
 
 ** Part 2: making the tail (the rest of the snake)
 
 **/

//  1. Create and initialize an ArrayList of Segments. (This will be your snake tail!)
  ArrayList<Segment> tail = new ArrayList<Segment>();

// 2. Complete the missing parts of the manageTail method below and call it in the draw method.

void manageTail() {
  checkTailCollision();

  //Call the drawTail and checkTailCollision methods.
  checkTailCollision();
  // Add a new Segment to your ArrayList that has the same X and Y as the head of your snake.
  tail.add(new Segment(s.getX(), s.getY()));
  // To keep your tail the right length:
  // while the tail size is greater than the number of food pieces eaten, remove the first Segment in your tail.
  while(tail.size() > food) {
    tail.remove(0);
  }
    drawTail();
}

void drawTail() {
    // Draw a 10 by 10 rectangle for each Segment in your snake ArrayList.
    for(Segment s :tail) {
      rect(s.getX(), s.getY(), 10, 10);
    }
}


// 3. Complete the missing parts of the bodyCollision method below.

void checkTailCollision() {
 //for(Segemt s : tail){
   //if (s.getX() == tail){
     //food = 1;
// }
  // If your head has the same location as one of your segments...

  // reset your food variable

  //Call this method at the beginning of your manageTail method.

 }
 //}