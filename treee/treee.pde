import java.util.Random;
PImage bg;

void setup() {
    
  bg = loadImage("Grass.png");

  size(1000, 600);
  background(bg);
  fill(0, 200, 0);
  loop();
}
//int[] intArray = new int[]{ 20,40,60,80,100,120,140,160,180,200}; 
int x= 50;
int y;
int k; 
void draw() {
  //loop();
}


public void loop() {
        Random rand = new Random();


  for (int i = 0; i<40; i++) {
int k = 60;

    if (i >= 40) {
      y = 600+rand.nextInt(k);
    } else if (i >= 32) {
      y = 600+rand.nextInt(k);
    } else if (i >= 24) {
      y = 450+rand.nextInt(k);
    } else if (i >= 16) {
      y = 350+rand.nextInt(k);
    } else if (i >= 8) {
      
      y = 250+ rand.nextInt(k);
    } else {
      y=110 + rand.nextInt(k);
    }
   if(i==8){
    x=x +rand.nextInt(80);
   }
      if(i==16){
    x=x +rand.nextInt(70);
   }
      if(i==25){
    x=x +rand.nextInt(60);
   }
      if(i==32){
    x=x +rand.nextInt(50);
   }
      if(i==40){
    x=x + rand.nextInt(50);
   }
    tree();
    x= x + 100 + rand.nextInt(40); 
    if (x >= width) {
      x = 50;
    }
    //Random rand = new Random();
  }
}
void tree() {
    Random rand = new Random();

  //x = int(random(width));
  //y =  int(random(200,height));
  int high = 40 ;
  int wide = 100;
  fill(200, 200, 100);
  rect(x-high/2, y, wide/2, high*2);
  fill(0, 200, 0);
  ellipse(x, y, wide+rand.nextInt(25), high+rand.nextInt(20));
}
