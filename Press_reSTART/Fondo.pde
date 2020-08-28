class Fondo {
  //Atributos
  PImage escenario1;
  PImage escenario2;
  PImage zona;
  PImage piso;

  //Constructor
  Fondo(String nombreEscenario1, String nombreEscenario2, String nombrePiso, String zonaMeditacion) {
    escenario1 = loadImage(nombreEscenario1);
    escenario2 = loadImage(nombreEscenario2);
    piso = loadImage(nombrePiso);
    zona = loadImage(zonaMeditacion);
  }

  //Metodos
  void mostrar1() {
    imageMode(CENTER);
    image(escenario1, width/2, height/2);
    //image(piso, width/2, 750);
  }

  void mostrar2() {
    imageMode(CENTER);
    image(escenario2, width/2, height/2);
    image(piso, width/2, 750);
  }
  void mostrar3() {
    imageMode(CENTER);
    image(zona, width/2, height/2);
  }
}
