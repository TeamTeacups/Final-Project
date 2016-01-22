class Powerups {
  float randy;
  PVector loc;
  float xsize, ysize;
  PImage cogsworth, lumiere;
  float timer=0;

 //Constrructor 1
  Powerups(float p, float g) {
    loc= new PVector(p,g );
    xsize= 100;
    ysize=100;
    cogsworth= loadImage("CogsworthComplete.gif");
    lumiere= loadImage("LumiereComplete.png");
    randy= random(0, 1);
  }
  
  //Constrructor 2
  Powerups(Plate o) {
    loc= new PVector(o.loc.x, o.loc.y-o.ysize );
    xsize= 100;
    ysize=100;
    cogsworth= loadImage("CogsworthComplete.gif");
    lumiere= loadImage("LumiereComplete.png");
    randy= random(0, 1);
  }

  void display() {
    if (whoIsIt()) {
      youAreMySunshine();
    } else {
      beOurGuest();
    }
  }

  void youAreMySunshine() {
    image(lumiere, loc.x, loc.y);
  }

  void beOurGuest() {
    image(cogsworth, loc.x, loc.y);
  }

  void update() {
    loc.y+=10;
  }
  
  boolean newLife(){
    if (loc.y>=height){
      return true;
    }else{
      return false;
    }
  }

  boolean whoIsIt() {
    if (randy < .6) {
      return true;
    } else {
      return false;
    }
  }
  
  //Checks to see if Chip is touching a powerup
  boolean isInContactWithChip(PVector direction) {
    if (direction.y+60>loc.y-ysize/2 && direction.y<loc.y+ysize/2 && loc.x-xsize/2<direction.x+27 && loc.x+xsize/2>direction.x) {
      return true;
    } else {
      return false;
    }
  }
  
  ///Clogsworth things
  void timerInMotion() {
    println(timer);
    timer+=1;
  }

  void resetTimer() {
    timer=0;
    println(timer);
  }

  boolean timeIsUp() {
    if (timer==50) {
      return true;
    } else {
      return false;
    }
  }
}