void EXIT() {//salida
  if (mousePressed) {
    if (mouseX>630  && mouseX<630+223 && mouseY>374  && mouseY<374+77) exit();
  }
}

void RESET() {//reinicio del nivel
  if (mousePressed && mouseX>0 && mouseX<138 && mouseY>0 && mouseY<52) {
    setup();
    musica.pause();
  }
}
