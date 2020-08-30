class Niveles {
  //  Atributos
  PImage piso;
  int columnas;
  int filas;
  char[][] objetos;
  String archivoObjetos;
  int nivel;
  boolean nivelsincargar = true;

  int[][]pos_suelo;
  int tamanoCosas = 60;
  int numElemInt = 0;

  Niveles(int nfilas, int ncolumnas, int Nnivel) {
    columnas = ncolumnas;
    filas = nfilas;
    objetos = new char[columnas][filas];
    nivel = Nnivel;
    piso = loadImage("piso sprite.png");
  }

  void nuevonivel() {
    if (nivelsincargar) {
      archivoObjetos = "data/niveles/1/elementos.txt";
      leerObjetos();
      println("Iniciar");
      nivelsincargar = false;
    }
    for (int n = 0; n < filas; n++) {
      for (int m = 0; m < columnas; m++) {
        if (objetos[m][n] != ' ') {
          numElemInt ++;
        }
      }
    }

    pos_suelo = new int[2][numElemInt];

    numElemInt = 0;
    //
    for (int n = 0; n < filas; n++) {
      for (int m = 0; m < columnas; m++) {
        if (objetos[m][n] != ' ') {
          pos_suelo[0][numElemInt] = (m*32);
          pos_suelo[1][numElemInt] = (n*32);
          numElemInt ++;
        }
      }
    }
  }
  void cambioNivel(int nuevoNivel) {
    nivel= nuevoNivel;
    nivelsincargar = true;
    numElemInt= 0;
  }
  void leerObjetos() {
    String[] line = loadStrings(archivoObjetos);
    println("there are " + line.length + " lines");
    println("there are" + columnas +" cols");
    for (int n = 0; n < line.length; n++) {
      println(line[n]);
      for (int m = 0; m < 25; m++) {
        objetos[m][n] = line[n].charAt(m);
      }
    }

    println("Esta es la matriz de la información:");
    for (int n = 0; n < line.length; n++) {
      for (int m = 0; m < 25; m++) {
        print(objetos[m][n]);
      }
      println("");
    }
  }
  void objetos() { // imprime los objetos con los que interacciona

    for (int n = 0; n < filas; n++) {
      for (int m = 0; m < columnas; m++) {
        // imprime el suelo
        if (objetos[m][n] == '#') { 
          copy(piso, 0, 0, width, height, (m*32), (n*32), 200, 200);
        }
        if (objetos[m][n] == '_') { 
          copy(piso, 0, 0, width, height, (m*32), (n*32), 200, 200);
        }
      }
    }
  }

  int m = 0;
  int s1 = millis(), s2 = millis();

  /*void RELOJ() {
    text(m+":"+s1/1000, 780, 35);
    if (s1>59000) {
      m++;
      s1 = millis();
    }
  }*/

  void verificarInteracciones() {
  }

  void pistas() {
  }

  void victoria() {
  }
}
