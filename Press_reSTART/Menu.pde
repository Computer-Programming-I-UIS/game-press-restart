class Menu {
  //Atributos
  PImage menu;
  PImage creditos;
  int boton_x = 630;
  int boton_ancho = 630 + 223;
  int boton_alto = 77 ;
  //Constructor
  Menu(String nombreMenu, String nombreCreditos) {
    menu = loadImage(nombreMenu);
    creditos = loadImage(nombreCreditos);
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

}
