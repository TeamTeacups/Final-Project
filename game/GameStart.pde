class GameStart {
  GameStart() {
  }
  void gameStart() {
    background(255);

    chip.update();    //Updates Chip
    chip.fall();    //Makes chip fall
    fill(0);
    text("Score:"+score, 250, 50);
    for (int i = platform.size()-1; i>=0; i--) {
      Plate o=platform.get(i);
      if (o.offScreen()) {
        platform.remove(i);
        platform.add(new Plate(o));
      }
      if (platform.size()<4) {
        platform.add(new Plate(random(0, width), 0));
      }


      o.create();
    }
    if (chip.isFalling()) {
      chip.displaychip();
    }//shows Chip
    else {
      chip.displaychipjump(); //shows pic of chip jumping
    }
    if (down&&t.loc.y<height-height/8) { //if plate jumped on isn't on bottom 
      for (int j = 0; j<platform.size(); j++) {//all plates move down
        Plate k = platform.get(j);
        k.update();
      }
    }
    for (int i = platform.size()-1; i>=0; i--) {

      Plate o= platform.get(i); //gets each plate

      if (o.isInContactWithChip(chip.loc)&&chip.isFalling()) { //if chip touches plate while falling
        down = true;   //plates move down
        t = o;

        chip.jump();
      }
    }
    if (random(15) < .05 && enemies.size() == 0) {
      enemies.add(new Enemies());
    }
    
  for (int i = 0; i < enemies.size(); i++) {
    e.create();
    Enemies e = enemies.get(i);
    e.update();
    e.display();
    if (e.loc.y > height) {
      enemies.remove(i);
    }
  }

    if (chip.dead()) {
      niall=5;
    }
  }
}