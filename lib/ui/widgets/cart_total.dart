import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';

class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);
  final ShoppingController shoppingController = Get.find();
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        //TOD
        // aquí debemos observar la variable total del shoppingController
        child: Text(
            'Total: ' + shoppingController.calcularTotal().toString() + '  usd',
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
