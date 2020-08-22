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

  int botonPresionado() {
    if (mousePressed) {
      if ( mouseX>boton_x  && mouseX<boton_x+boton_ancho && mouseY>boton_y  && mouseY<boton_y+boton_alto ) return 1;
    }
    return 0;
  }
  int botonReinicio() {
    rect(boton_x-200, boton_y-300, boton_x-170, boton_y-270);
    if (mousePressed) {
      if (mouseX>0 && mouseX<50 && mouseY>10 && mouseY<60)return 0;
    }
    return 1;
  }
}
