class Powerups {
  float randy;
  PVector loc;
  float xsize, ysize;
  PImage cogsworth, lumiere;

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
  
  void newLife(){
    if (loc.y>=height){
      loc.y=0;
    }
  }

  boolean whoIsIt() {
    if (randy < .6) {
      return true;
    } else {
      return false;
    }
  }
}