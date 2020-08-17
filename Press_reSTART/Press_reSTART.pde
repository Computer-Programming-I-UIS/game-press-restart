import ddf.minim.*;

Minim minim;
AudioPlayer player;
PImage img;


void setup(){
  size(850,600);
  img =loadImage("Fondo.png");
  minim = new Minim(this);
  player = minim.loadFile("Dreamscape.mp3");
}

void draw(){
  image(img, 0, 0);
  
  if (player.isPlaying() ){
    text("Presione una tecla", 10, 20);
    
  }
  else
  {
    text("Presione una tecla", 10 , 20);
  }
}
  
  
  void keyPressed(){
    if(player.isPlaying() )
    {
      player.pause();
    }
    else
    {
      player.play();
    }
  }



      
 
  
  
