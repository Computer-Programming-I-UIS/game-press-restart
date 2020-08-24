class Menu {
  //Atributos
  PImage menu;
  int boton_x = 630;
  int boton_y = 255;
  int boton_ancho = 630 + 223;
  int boton_alto = 255 + 77 ;
  //Constructor
  Menu(String nombreMenu) {
    menu = loadImage(nombreMenu);
  }

  //Metodos
  void mostrar() {
    image(menu, 0, 0, width, height);
  }

  int botonPantalladeInicio() {
    if (mousePressed) {
      if ( mouseX>boton_x  && mouseX<boton_x+boton_ancho && mouseY>boton_y  && mouseY<boton_y+boton_alto ) return 1;
    }
    return 0;
  }

  int botonReinicio() {
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
}
