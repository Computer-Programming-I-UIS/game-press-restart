class Menu {
  //Atributos
  PImage menu;
  PImage creditos;
  int boton_x = 630;
  int boton_y = 255;
  int boton_ancho = 630 + 223;
  int boton_alto = 255 + 77 ;
  //Constructor
  Menu(String nombreMenu, String nombreCreditos) {
    menu = loadImage(nombreMenu);
    creditos = loadImage(nombreCreditos);
  }

  //Metodos
  void mostrar() {
    image(menu, 0, 0, width, height);
  }

  int botonInicio() {
    if (mousePressed) {
      if ( mouseX>boton_x  && mouseX<boton_x+boton_ancho && mouseY>boton_y  && mouseY<boton_y+boton_alto ) return 1;
    }
    return 0;
  }

  int botonRestart() {
    if (mousePressed) {
      if (mouseX>0 && mouseX<138 && mouseY>0 && mouseY<52) return 0;
    }
    return 1;
  }

  int botonCreditos() {
    if (mousePressed) {
      if (mousePressed && mouseX > 630 && mouseX < 630+223 && mouseY > 490 && mouseY < 490+77) return 2;
    }
    return 0;
  }
}
