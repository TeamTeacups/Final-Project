
//declare variables

PFont bigfont, mediumfont, smallfont, boxfont, boxfont2, okfont, font, font2, font3, looserfont;

//declare all fonts

PImage chipey, clock, duster, candles, mom, tile, ahhh;

//declare all picture names

float w1, w2, h1, h2, w1a, w2a, h1a, h2a, w1b, w2b, h1b, h2b;

//declare all variables for the buttons and more

float scaleFactor11, scaleFactor21, scaleFactor33, scaleFactor31, scaleFactor32, scaleFactor43, scaleFactor5, scaleFactor1, scaleFactor2, scaleFactor3, scaleFactor4; 

//declare the scale factors

int niall;

boolean play = false;
Chip chip;
ArrayList<Plate> platform = new ArrayList<Plate>();
boolean down = false;
Plate t;
boolean start;
int score = 0;
GameStart gamestart;
Starter starter;

void setup() {
  
  
  
  size(500, 800);  //size of screen
  frameRate(200);
  bigfont = createFont("Bookman Old Style", 48, true);
  okfont = createFont("Bookman Old Style", 32, true);
  mediumfont = createFont("Bookman Old Style", 25, true);
  smallfont = createFont("Bookman Old Style", 17, true);
  boxfont = createFont("Bookman Old Style", 30, true);
  boxfont2 = createFont("Bookman Old Style", 16, true);
  font = createFont("Bookman Old Style", 50, true);
  font2 = createFont("Bookman Old Style", 60, true);
  font3 = createFont("Bookman Old Style", 40, true);
  looserfont = createFont("Bookman Old Style", 100, true);
  
  //declare all fonts and font sizes

  niall = 1;

  // sets that when program starts to run, begin on start screen

  mom = loadImage("mrspottslooksangry.gif");
  chipey = loadImage("prettychipblackbackground.jpg");
  clock = loadImage("clockdude.gif");
  duster = loadImage("sweepdusterstanding.gif");
  candles = loadImage("candlelookingcool.gif");
  tile = loadImage("tile.jpg");
  //chip = loadImage("chip.jpg");
  // ahhh = loadImage(“scaredchipfinal.jpg”);

  //load all images
  scaleFactor1 = 1.2;
  scaleFactor2 = 1.5;
  scaleFactor3 = .45;
  scaleFactor4 = .3;
  scaleFactor11 = .45;
  scaleFactor21 = .3;
  scaleFactor33 = .2;
  scaleFactor31 = .180;
  scaleFactor32 = .150;
  scaleFactor43 = .250;
  scaleFactor5 = .160;

  //Original Plate made so they'll be evenly spaced
  platform.add(new Plate(random(0, width), 200));
  platform.add(new Plate());

  platform.add(new Plate(random(0, width), 300));
  platform.add(new Plate(random(0, width), 400));
  platform.add(new Plate(random(0, width), 600));

  platform.add(new Plate(random(0, width), 100));
  //Chip stuff
  chip = new Chip(platform.get(0));

  gamestart= new GameStart();
  starter=new Starter();
  //set all scale factors

  w1a = 150;
  w2a = 350;
  h1a = 200;
  h2a = 300;
  w1b = 100;
  w2b = 400;
  h1b = 360;
  h2b = 460;

  //heights and widths of buttons on opening page
}
void draw() {

  starter.starter();
  if (start) {
    gamestart.gameStart();
  }
}

void keyPressed() {
  chip.key();
}