class Menu {
  //Atributos
  PImage menu;
  int boton_x = 356;
  int boton_y = 332;
  int boton_ancho = 467 - 356;
  int boton_alto = 437 - 332 ;
  //Constructor
  Menu(String nombreMenu) {
    menu = loadImage(nombreMenu);
  }

  //Metodos
  void mostrar() {
    image(menu, 0, 0, width, height);
  }

  int botonPresionado() {
    if (mousePressed) {
      if ( mouseX>boton_x  && mouseX<boton_x+boton_ancho && mouseY>boton_y  && mouseY<boton_y+boton_alto ) return 1;
    }
    return 0;
  }
  int botonReinicio() {
    rect(boton_x-200, boton_y-300, boton_x-170, boton_y-270);
    if (mousePressed) {
      if (mouseX>boton_x-200 && mouseX<boton_x-170 && mouseY>boton_y-300 && mouseY<boton_y-270)return 0;
    }
    return 1;
  }
}
