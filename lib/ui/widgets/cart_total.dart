import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../controllers/shopping_controller.dart';

class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);
  final ShoppingController shoppingController = Get.find();
  @override
  Widget build(BuildContext context) {
    var calcularTotal = shoppingController.calcularTotal();
    logInfo('totaltotal $calcularTotal');
    return const Expanded(
      child: Center(
        //TOD
        // aquí debemos observar la variable total del shoppingController
        child: Text('Total: ' + shoppingController.total.toString() + ' usd',
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
