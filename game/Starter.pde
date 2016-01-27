class Starter {
  Starter() {
  }
  void starter() {
    if (niall==5) {
      background(0);
      fill(26, 40, 100);
      rect(50, 480, 400, 150);
      fill(255);
      text("GAME", 250, 300);
      text("OVER", 250, 400);
      textFont(mediumfont);
      text("You Lost!", 250, 450);
      textFont(bigfont);
      text("To play again,", 250, 550);
      text("Click HERE", 250, 600);
      image(ahhh, 300, 10, width*scaleFactor21, height*scaleFactor33);
    }

    if (niall==5 && mousePressed && mouseX>50 && mouseX<450 && mouseY>480 && mouseY<630) {
      niall=1;
    }
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

      image(chip.chip, 140, 520, width *scaleFactor3, height *scaleFactor4);

      //add a picture of chip on the opening screen

      if (mousePressed && mouseX > w1a && mouseX < w2a && mouseY > h1a && mouseY < h2a) {
        start=true;
      }

      // if the play button is pressed game will start (temporarily black screen until merged)

      if (mousePressed && mouseX > w1b && mouseX < w2b && mouseY > h1b && mouseY < h2b) {
        niall=2;
      }
    }
  }
}