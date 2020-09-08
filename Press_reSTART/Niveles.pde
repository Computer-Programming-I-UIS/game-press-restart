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
  int[][] obstaculos;
  boolean objetoArriba = false;
  boolean objetoAbajo = false;
  boolean objetoIzquierda = false;
  boolean objetoDerecha = false;

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


  void verificarObstaculos(int[][] obstaculos, int numElemInt) {
    int cnt = 0;
    int cnt2 = 0;
    int cnt3 = 0;
    int cnt4 = 0;
    for (int n = 0; n < numElemInt; n++) {
      if (obstaculos[0][n] < roboto.pos_x +32 && obstaculos[0][n] + 30 > roboto.pos_x && obstaculos[1][n] > roboto.pos_y && obstaculos[1][n] < roboto.pos_y+48+roboto.speedy) { // deteccion de elementos abajo
        cnt ++;
      } 
      if (obstaculos[0][n] < roboto.pos_x +32 && obstaculos[0][n] + 30 > roboto.pos_x && obstaculos[1][n] + 30 < roboto.pos_y+48 && obstaculos[1][n] + 30 > roboto.pos_y+36-roboto.speedy) { // deteccion de elementos arriba
        cnt2 ++;
      }
    }
    for (int m = 0; m < numElemInt; m++) {
      if (obstaculos[0][m] < roboto.pos_x+32+roboto.speedx && obstaculos[0][m] + 30 > roboto.pos_x+32+roboto.speedx && obstaculos[1][m] +48 > roboto.pos_y+44 && obstaculos[1][m] < roboto.pos_y+48) {// deteccion de elementos derecha
        cnt3 ++;
      } 
      if (obstaculos[0][m] + 30 > roboto.pos_x-roboto.speedx && obstaculos[0][m] < roboto.pos_x-roboto.speedx && obstaculos[1][m] + 48 > roboto.pos_y+44 && obstaculos[1][m] < roboto.pos_y+48) {// deteccion de elementos izquierda
        cnt4 ++;
      }
    }

    if (cnt >0) objetoAbajo = true;
    else objetoAbajo = false;

    if (cnt2 >0) objetoArriba = true;
    else objetoArriba = false;

    if (cnt3 >0) objetoDerecha = true;
    else objetoDerecha = false;

    if (cnt4 >0) objetoIzquierda = true;
    else objetoIzquierda = false;
  }
}

void pistas() {
}

void victoria() {
}
