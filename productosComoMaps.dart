// 1.Deberá contar con una clase Producto con los campos: codigo, descripcion, precio y existencia.
// 2.Convertir cada objeto Producto en un mapa (Map) y mostrar el resultado
//como un listado de Maps similar al listado anterior.

import 'dart:io';

void main() {
  // Producto prueba1 = Producto(
  //     codigo: 1, descripcion: 'Guayaba 1kg', precio: 50000, existencia: 10);

  // Map prueba2 = {
  //   'codigo': 1,
  //   'descripcion': 'Limón 1kg',
  //   'precio': 30000,
  //   'existencia': 15
  // };

  // print(prueba1.toString());
  // print(prueba2);

  menu();
}

class Producto {
  // Declaración de variables
  int codigo;
  String descripcion;
  double precio;
  int existencia;

  //Método constructor del producto, abajo se inicializan las variables e
  // indicamos el campo codigo como requerido.
  Producto(
      {required this.codigo,
      this.descripcion = '',
      this.precio = 0,
      this.existencia = 0}) {}

  String toString() {
    return 'Producto: [Código: $codigo, Descripción: $descripcion, Precio: $precio, Existencia: $precio]';
  }
}

void menu() {
  dynamic contador = 0;
  Map listado = Map();
  mostrarMenu();
  int opc = leerInt("Ingrese una opción: ");
  while (opc != 4) {
    switch (opc) {
      case 1:
        // listado.addEntries();
        break;
      case 2:
        // mostrarListado();
        break;
      case 3:
        // eliminarProducto();
        break;
      case 4:
        print("Gracias. Hasta luego.");
        break;
      default:
        print("Ingrese una opción válida, por favor.");
    }
  }
}

mostrarMenu() {
  Map menu = {
    '1': 'Ingresar producto',
    '2': 'Mostrar listado',
    '3': 'Eliminar producto(s) por id',
    '4': 'Salir'
  };

  menu.forEach((key, value) {
    print(value);
  });
}

void crearProducto() {
  print("Ingrese los datos del producto: ");
}

//Método que lee datos de tipo int
int leerInt(String mensaje) {
  print(mensaje);
  String input = stdin.readLineSync().toString();
  int numero = int.parse(input);
  return numero;
}
