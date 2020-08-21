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
    image(escenario, 0, 0);
    image(piso, 0, 476);
  }
}
