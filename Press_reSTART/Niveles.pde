class Niveles extends Fondo {

  int nivel=0;
  int temporizador_ms =10000;
  int contador1 = millis(), contador2 = millis();

  Niveles(String nombreEscenario1, String nombreEscenario2, String nombrePiso, String zonaMeditacion) {
    super(nombreEscenario1, nombreEscenario2, nombrePiso, zonaMeditacion);
  }
  void cronometro(){
    textSize(15);
    fill(255);
    text(contador1/1000, 730, 44);
    if(contador2/1000>temporizador_ms){
      
    
    }
    contador2 = millis();
  }
 /* void nivel1() {
    if (Robot.pos_x<-69 && Robot.pos_x> 919) {
      nivel++;
    }
  }
  void nivel2() {
    if (Robot.pos_x<69/2 && Robot.pos_x>850+69/2) {
      nivel++;
    }
  }*/
}
