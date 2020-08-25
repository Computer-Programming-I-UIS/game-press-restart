class Niveles extends Fondo{
  
  int avancenivel=0;
  
  Niveles(String nombreEscenario1, String nombreEscenario2, String nombrePiso, String zonaMeditacion){
    super(nombreEscenario1, nombreEscenario2, nombrePiso, zonaMeditacion);
    
  }
   
   void nivel1(){
   if(Robot.pos_x<-69){
    avancenivel++;
     
   }
   }
   void nivel2(){
     
     
     
  // }
}
