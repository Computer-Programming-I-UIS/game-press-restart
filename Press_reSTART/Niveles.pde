/*class Niveles {
  //  Atributos
  int columnas;
  int filas;
  char[][] objetos;
  String archivoObjetos;
  int nivel;
  boolean nivelsincargar = true;

  int[][]pos_muros;
  int tamanoCosas = 60;
  int numElemInt = 0;

  Niveles(int nfilas, int ncolumnas, int, Nnivel) {
    columnas = ncolumnas;
    filas = nfilas;
    objetos = new char[columnas][filas];
    nivel = Nnivel;
  }

  void nuevonivel() {
    if (nivelnuevo) {
      archivoObjetos = "data/niveles/" +str(nivel)+"/elementos.txt";
      leerObjetos();
      printl("Iniciar");
      nivelsincargar = false;
    }
    for (int n = 0; n < rows; n++) {
      for (int m = 0; m < cols; m++) {
        if (objetos[m][n] != ' ') {
          numElemInt ++;
        }
      }
    }
    
    pos_interacciones = new int[2][numElemInt];

    numElemInt = 0;
    //
    for (int n = 0; n < filas; n++) {
      for (int m = 0; m < columnas; m++) {
        if (objetos[m][n] != ' ') {
          pos_muros[0][numElemInt] = (m*60);
          pos_muros[1][numElemInt] = (n*60);
          numElemInt ++;
        }
      }
    }
  }
  void cambioNivel(int nuevoNivel){
    nivel= nuevoNivel;
    nivelsincargar = true;
    numElemInt= 0;
  }
  void leerObjetos(){
     String[] line = loadStrings(archivoObjetos);
    println("there are " + line.length + " lines");
    for (int n = 0; n < line.length; n++) {
      println(line[n]);
      for (int m = 0; m < 44; m++) {
        objetos[m][n] = line[n].charAt(m);
      }
    }
    
    println("Esta es la matriz de la información:");
    for (int n = 0; n < line.length; n++) {
      for (int m = 0; m < 44; m++) {
        print(objetos[m][n]);
      }
      println("");
    }
  }
  void objetos() { // imprime los objetos con los que interacciona

    for (int n = 0; n < rows; n++) {
      for (int m = 0; m < cols; m++) {
        // imprime el suelo
        if (objetos[m][n] == '#') { 
          copy(tileset, 60, 150, 60, 60, (m*60), (n*60), 60, 60);
        }
        if (objetos[m][n] == '_') { 
          copy(tileset, 60, 150, 60, 60, (m*60), (n*60), 60, 60);
        }
      }
    }
  }
      
    
    




    int nivel=0;
    int temporizador_ms =10000;
    int contador1 = millis(), contador2 = millis();

    Niveles(String nombreEscenario1, String nombreEscenario2, String nombrePiso, String zonaMeditacion) {
      super(nombreEscenario1, nombreEscenario2, nombrePiso, zonaMeditacion);
    }
    void cronometro() {
      textSize(15);
      fill(255);
      text(contador1/1000, 730, 44);
      if (contador2/1000>temporizador_ms) {
      }
      contador2 = millis();
    }
    void nivel() {
      if (nivel == 0) {
        if (roboto.pos_x<-69 && roboto.pos_x> 919) {
          nivel++;
        }
      }
    }
    void nivel2() {
      if (nivel == 1);
      textSize(20);
      text("ESTAS MEDIO FLACO...", 176, 108); 
      if (roboto.pos_x<69/2 && roboto.pos_x>850+69/2) {
        nivel++;
      }
    }

    void verificarInteracciones() {
    }

    void pistas() {
    }

    void pedro() {
    }
  }

 */
