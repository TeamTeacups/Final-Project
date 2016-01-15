PFont bigfont, mediumfont, smallfont, boxfont, boxfont2, okfont;
float w1,w2,h1,h2;
int niall;

void setup() {
  size(500, 800);
  background(0);
  bigfont = createFont("Bookman Old Style", 48, true);
  okfont = createFont("Bookman Old Style", 32, true);
  mediumfont = createFont("Bookman Old Style", 23, true);
  smallfont = createFont("Bookman Old Style", 17, true);
  boxfont = createFont("Bookman Old Style", 30, true);
  boxfont2 = createFont("Bookman Old Style", 16, true);
  niall = 1;
}

void draw() {
  if (niall == 1){
  textAlign(CENTER);
  fill(255);
  textFont(bigfont);
  text("Chip's Great Escape!", 250, 125 );
  textFont(smallfont);
  text("How to Play:", 250, 200 );
  text("Use arrow keys: Left and Right", 250, 250);
  text("to make sure Chip has a plate to land on!", 250, 300);
  text("Keep chip far away from the sink!", 250, 350);
  text("Reach out to one of his buddies for help!", 250, 400);
  text("These powerups will make Chip go higher!", 250, 450);
  text("If you land on a broken plate or an obstacle, Chip will fall!", 250, 500);
  textFont(mediumfont);
  text("Good Luck!", 250, 575 );
  fill(255);
  rect(50, 625, 160, 90);
  rect(290, 625, 160, 90);
  textFont(boxfont);
  fill(0);
  text("Back", 125, 675);
  textFont(boxfont2);
  text("More", 375, 660);
  text("Instructions", 375, 680);
  }

  if (mousePressed && mouseX>290 && mouseX<450 && mouseY<715 && mouseY>625) {
    niall = 2;
  }
  if (niall==2){
    background(255);
    fill(0);
    textFont(okfont);
    text("Power-ups Include:", 250, 100);
    text("Obstacles Include:", 250, 400);
    textFont(mediumfont);
    text("Cogsworth:", 175, 175);
    text("Lumière:", 325, 275);
    text("Mrs.Potts:", 175, 475);
    text("Sir. Soap:", 325, 575);
    text("Shattered Plates:", 175, 675);
    textFont(smallfont);
    text("He will slow down the rising water", 175, 200);
    text("This gives Chip more time to get higher!", 175, 225); 
    text("Using the heat from his candles,", 325, 300);
    text("He will make Chip float higher!", 325, 325);
    text("She wants Chip to take a bath", 175, 500);
    text("So she will make Chip lose", 175, 525);
    text("He will make Chip slip!", 325, 600);
    text("And Chip will fall to the sink!", 325, 625);
    text("They are not a safe place to land,", 175, 700);
    text("Chip will fall right through them!", 175, 725);
    fill(0);
    rect(5,5,125,50);
    textFont(mediumfont);
    fill(255);
    text("Back", 65, 40);
    if(mousePressed && mouseX>5 && mouseX<55 && mouseY<130 && mouseY>5) {
      niall = 1;
    }
  }
}