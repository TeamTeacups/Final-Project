class Starter {
  Starter() {
  }
  void starter() {



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
      text("Don't touch an obstacle!", 250, 515);
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

      image(mom, 325, 415, width*scaleFactor43, height*scaleFactor5);
      image(duster, 30, 530, width*scaleFactor31, height*scaleFactor31);

      //place all images in more instructions page

      fill(0);
      textFont(okfont);
      text("Obstacles Include:", 250, 400);
      text("Powerups Include:", 250, 100);
      textFont(mediumfont);
      text("Mrs.Potts:", 175, 475);
      text("Babette:", 325, 585);
      text("Colored Plates:", 325, 200);
      textFont(smallfont);
      text("She wants Chip to take a bath", 175, 500);
      text("These will give Chip a boost", 175, 250);
      text("in order to avoid the necessary evil", 175, 300);
      text("that is bathing.", 175, 350);
      text("So she will make Chip lose", 175, 525);
      text("She will dust Chip away!", 325, 610);
      text("And Chip will fall to the sink!", 325, 635);

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