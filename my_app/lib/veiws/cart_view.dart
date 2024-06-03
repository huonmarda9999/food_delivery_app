import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controllers/cart_controller.dart';

class CartView extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return Center(
            child: Text('Your cart is empty'),
          );
        }
        return ListView.builder(
          itemCount: cartController.cartItems.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(cartController.cartItems[index]['name']!),
                subtitle: Text(cartController.cartItems[index]['description']!),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(cartController.cartItems[index]['price']!),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        cartController
                            .removeFromCart(cartController.cartItems[index]);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
