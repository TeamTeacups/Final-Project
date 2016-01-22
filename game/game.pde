PFont bigfont, mediumfont, smallfont, boxfont, boxfont2, okfont, font, font2, font3, looserfont;

//declare all fonts

PImage chipey, clock, duster, candles, mom, tile, chip, ahhh;

//declare all picture names

float w1, w2, h1, h2, w1a, w2a, h1a, h2a, w1b, w2b, h1b, h2b;

//declare all variables for the buttons and more

float scaleFactor11, scaleFactor21, scaleFactor33, scaleFactor31, scaleFactor32, scaleFactor43, scaleFactor5, scaleFactor1, scaleFactor2, scaleFactor3, scaleFactor4; 

//declare the scale factors

int niall;

//declare what page it is on
//declare all variables

void setup() {
  size(500, 800);

  //size of screen

  background(0);

  //black background

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
  chip = loadImage("chip.png");
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
  if (niall == 2) {

    //show the second screen - instructions

    background(0);

    //black background

    image(chipey, 0, 0, width*scaleFactor11, height*scaleFactor21 );

    //put chip in first instructions page

    textAlign(CENTER);

    //make all text center

    fill(255);
    textFont(bigfont);

    //set the form of text for title on instuctions

    text("Chip's", 300, 70);
    text("Great", 300, 125 );
    text("Escape!", 300, 180);
    textFont(smallfont);
    text("How to Play:", 250, 235 );
    text("Use arrow keys: Left and Right", 250, 265);
    text("to make sure Chip has a plate to land on!", 250, 315);
    text("Keep chip far away from the sink!", 250, 365);
    text("Reach out to one of his buddies for help!", 250, 415);
    text("These powerups will make Chip go higher!", 250, 465);
    text("If you land on a broken plate or an obstacle, Chip will fall!", 250, 515);
    textFont(mediumfont);
    text("Good Luck!", 250, 575 );

    //all text 

    fill(255);
    rect(50, 625, 160, 90);
    rect(290, 625, 160, 90);

    //draw buttons on instruction sheet

    textFont(boxfont);
    fill(0);
    text("Back", 125, 675);
    textFont(boxfont2);
    text("More", 375, 660);
    text("Instructions", 375, 680);

    //put words on buttons
  }

  if (niall == 2 && mousePressed && mouseX>50  && mouseX<210  && mouseY>625  && mouseY<715) {
    niall = 1;
  }

  //if the back button is clicked while on the instructions sheet, go back to the opening screen

  if (niall == 2 && mousePressed && mouseX>290 && mouseX<450 && mouseY<715 && mouseY>625) {
    niall = 3;
  }

  //if the more instructions button is pressed, show the third screen

  if (niall == 3 && mousePressed && mouseX>5 && mouseX<130 && mouseY>5 && mouseY<55) {
    niall = 2;
  }

  //if that back button is pressed, go from the more instructions page to the instructions page

  if (niall==3) {
    background(255);

    //white background 

    image(clock, 400, 110, width*scaleFactor33, height*scaleFactor33);
    image(candles, 25, 230, width*scaleFactor33, height*scaleFactor33);
    image(mom, 325, 415, width*scaleFactor43, height*scaleFactor5);
    image(duster, 30, 530, width*scaleFactor31, height*scaleFactor31);

    //place all images in more instructions page

    fill(0);
    textFont(okfont);
    text("Power-ups Include:", 250, 100);
    text("Obstacles Include:", 250, 400);
    textFont(mediumfont);
    text("Cogsworth:", 175, 175);
    text("Lumière:", 325, 275);
    text("Mrs.Potts:", 175, 475);
    text("Babette:", 325, 585);
    text("Shattered Plates:", 175, 700);
    textFont(smallfont);
    text("He will slow down the rising water", 175, 200);
    text("This gives Chip more time to get higher!", 175, 225); 
    text("Using the heat from his candles,", 325, 300);
    text("He will make Chip float higher!", 325, 325);
    text("She wants Chip to take a bath", 175, 500);
    text("So she will make Chip lose", 175, 525);
    text("She will dust Chip away!", 325, 610);
    text("And Chip will fall to the sink!", 325, 635);
    text("They are not a safe place to land,", 175, 725);
    text("Chip will fall right through them!", 175, 750);

    //text on more instructions page

    fill(255, 204, 102);
    stroke(255);
    rect(5, 5, 125, 50);
    textFont(mediumfont);
    fill(0);
    text("Back", 65, 40);

    // back button and text on button
  }
  if (mousePressed && mouseX>5 && mouseX<55 && mouseY<130 && mouseY>5) {
    niall = 2;
  }

  //if the instructions button is pressed on the first screen, go to the second screen

  if (niall==1) {
    image(tile, 0, 0, width * scaleFactor2, height * scaleFactor1);

    //put the tile background for the opening page

    textAlign(CENTER);
    textFont(font);
    fill(0);
    text("Chip's Great Escape", 250, 125);

    // put in title words

    noStroke();
    fill(0);
    rect(150, 200, 200, 100);
    textAlign(CENTER);
    textFont(font2);
    fill(255);
    text("PLAY", 250, 270);
    noStroke();
    fill(0);
    rect(100, 360, 300, 100);
    textAlign(CENTER);
    textFont(font3);
    fill(255);
    text("HOW TO PLAY", 250, 420);

    // draw buttons, and text in buttons

    image(chip, 140, 520, width *scaleFactor3, height *scaleFactor4);

    //add a picture of chip on the opening screen

    if (mousePressed && mouseX > w1a && mouseX < w2a && mouseY > h1a && mouseY < h2a) {
      background(0);
    }

    // if the play button is pressed game will start (temporarily black screen until merged)

    if (mousePressed && mouseX > w1b && mouseX < w2b && mouseY > h1b && mouseY < h2b) {
      niall=2;
    }
  }
}