class Menu {
  //Atributos
  PImage menu;
  int boton_x = 630;
  int boton_ancho = 630 + 223;
  int boton_alto = 77 ;
  //Constructor
  Menu(String nombreMenu) {
    menu = loadImage(nombreMenu);
  }

  //Metodos
  void mostrar() {
    image(menu, 0, 0, width, height);
  }

  int START() {
    if (mousePressed) {
      if ( mouseX>boton_x  && mouseX<boton_x+boton_ancho && mouseY>255  && mouseY<255+boton_alto ) return 1;
    }
    return 0;
  }
  int EXIT() {
    if (mousePressed) {
      if ( mouseX>boton_x  && mouseX<boton_x+boton_ancho && mouseY>374  && mouseY<374+boton_alto) {
        exit();
      }
    }
    return 0;
  }


  int CREDITS() {
    if (mousePressed) {
      if ( mouseX>boton_x  && mouseX<boton_x+boton_ancho && mouseY>490  && mouseY<490+boton_alto) return 2; 
      {
        PImage img;
        img = loadImage("creditos.png");
        image(img, 0, 0);
      }
    }
    return 0;
  }
}




int botnicio() {
  if (mousePressed) {
    if (mouseX>0 && mouseX<50 && mouseY>0 && mouseY<60)return 1;
  }
  return 0;
}

int botonCreditos() {
  if (mousePressed) {
    if (mousePressed && mouseX > 630 && mouseX < 630+223 && mouseY > 490 && mouseY < 490+77) return 0;
  }
  return 2;
}
