class Fondo {
  //Atributos
  PImage escenario;
  PImage piso;

  //Constructor
  Fondo(String nombreEscenario, String nombrePiso) {
    escenario = loadImage(nombreEscenario);
    piso = loadImage(nombrePiso);
  }

  //Metodos
  void mostrar() {
    imageMode(CENTER);
    image(escenario, width/2,250);
    image(piso, width/2, 750);
  }
}
