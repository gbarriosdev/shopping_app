//import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' show GetxController;
import 'package:get/get_rx/get_rx.dart';
import 'package:loggy/loggy.dart';

import '../../domain/product.dart';

class ShoppingController extends GetxController {
  // lista de productos
  var entries = <Product>[].obs;
  // el valor total de la compra
  var total = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // los dos elementos que vamos a tener en la tienda
    entries.add(Product(0, "Toy car", 10));
    entries.add(Product(1, "Toy house", 20));
  }

  var cantidad = 0;

  calcularTotal() {
    int newTotal = 0;

    for (int i = 0; i < entries.length; i++) {
      newTotal = newTotal + entries[i].price * entries[i].quantity;
    }
    total.value = newTotal;
    logInfo('total $newTotal');
  }

  agregarProducto(id) {
    logInfo('agregarProducto $id');
    var proActual = entries.firstWhere((e) => e.id == id);
    var indice = entries.indexOf(proActual);
    entries[indice].quantity = entries[indice].quantity + 1;
    var cantidad = entries[indice].quantity;
    logInfo('produco actual $cantidad');
    calcularTotal();
    entries.refresh();
  }

  quitarProducto(id) {
    logInfo('quitarProducto $id');
    var proActual = entries.firstWhere((e) => e.id == id);
    var indice = entries.indexOf(proActual);
    var cantidad = entries[indice].quantity;
    cantidad = cantidad - 1;
    if (cantidad < 0) {
      cantidad = 0;
    }
    entries[indice].quantity = cantidad;
    calcularTotal();
    entries.refresh();
  }
}
