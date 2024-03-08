// 1.Deberá contar con una clase Producto con los campos: codigo, descripcion, precio y existencia.
// 2.Convertir cada objeto Producto en un mapa (Map) y mostrar el resultado
//como un listado de Maps.

import 'dart:io';

void main() {
  menu();
}

class Producto {
  // Declaración de variables
  String codigo;
  String descripcion;
  double precio;
  int existencia;

  //Método constructor del producto, abajo se inicializan las variables
  Producto(
      {required this.codigo, // indicamos el campo codigo como requerido.
      this.descripcion = '',
      this.precio = 0,
      this.existencia = 0}) {}

  //Convierte un objeto en un mapa
  Map convertirMapa() {
    return {
      'Código': codigo,
      'Descripción': descripcion,
      'Precio': precio,
      'Existencia': existencia
    };
  }

  String toString() {
    return 'Producto: [Código: $codigo, Descripción: $descripcion, Precio: $precio, Existencia: $precio]';
  }
}

//Método que muestra las opciones del menú y ejecuta las respectivas funciones
void menu() {
  List listado = [];
  int opc;
  do {
    mostrarMenu();
    opc = leerInt("Ingrese una opción: \n____________________________");
    switch (opc) {
      case 1:
        Producto producto = crearProducto();
        listado.add(producto.convertirMapa());
        break;
      case 2:
        mostrarListado(listado);
        break;
      case 3:
        print("Gracias. Hasta luego.\n____________________________");
        break;
    }
  } while (opc != 3);
}

//Método que muestra las opciones del menú
mostrarMenu() {
  print("________¡Bienvenido!________");
  Map menu = {'1': 'Ingresar producto', '2': 'Mostrar listado', '3': 'Salir'};

  menu.forEach((key, value) {
    print(key + ". " + value);
  });
}

//Método para mostrar la lista de productos
mostrarListado(List listado) {
  int contador = 1;
  print("Productos existentes en la lista: ");
  listado.forEach((element) {
    print("$contador. $element");
    contador++;
  });
  print("____________________________");
}

//Método para crear productos
Producto crearProducto() {
  print("Ingrese los datos del producto: ");
  print("Código del producto");
  String cod = stdin.readLineSync().toString();
  print("Descripción del producto: ");
  String desc = stdin.readLineSync().toString();
  double prec = leerInt("Precio del producto: ").toDouble();
  int exis = leerInt("Existencia del producto: ");

  Producto producto =
      Producto(codigo: cod, descripcion: desc, precio: prec, existencia: exis);

  print("*** Producto agregado al listado. ***");
  return producto;
}

//Método que lee entradas de datos, los convierte y retorna datos de tipo int
int leerInt(String mensaje) {
  print(mensaje);
  String input = stdin.readLineSync().toString();
  int numero = int.parse(input);
  return numero;
}
