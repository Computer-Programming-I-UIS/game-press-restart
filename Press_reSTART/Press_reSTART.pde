import ddf.minim.*;

Minim minim;
AudioPlayer player;
PImage menu = loadImage("carga.png");
PImage escenario = loadImage("fondo juego.png");
PImage piso = loadImage("piso.png");
int gamestate= 1;

Robot Roboto;

void setup(){
  size(850,600);
  minim = new Minim(this);
  player = minim.loadFile("Dreamscape. [Lofi  Jazz Hop  Chillhop].mp3");
  Roboto = new Robot(width/2, height/2);
}

void draw(){
  if(gamestate == 0){
  imageMode(CORNER);
  image(escenario, 0, 0);
  image(piso, 0, 540);
  player.play();
  }
  else{
    imageMode(CENTER);
    image(menu, width/2, height/2);
  }
}



      
 
  
  
