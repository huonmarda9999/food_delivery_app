import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controllers/cart_controller.dart';

class MenuView extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  final List<Map<String, String>> foodItems = [
    {
      'name': 'Burger',
      'description': 'Juicy grilled burger',
      'price': '\$5.99'
    },
    {
      'name': 'Pizza',
      'description': 'Cheesy pizza with toppings',
      'price': '\$8.99'
    },
    {'name': 'Pasta', 'description': 'Creamy Alfredo pasta', 'price': '\$7.99'},
    {'name': 'Salad', 'description': 'Fresh garden salad', 'price': '\$4.99'},
    {
      'name': 'Sushi',
      'description': 'Assorted sushi platter',
      'price': '\$12.99'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(foodItems[index]['name']!),
              subtitle: Text(foodItems[index]['description']!),
              trailing: Text(foodItems[index]['price']!),
              onTap: () {
                cartController.addToCart(foodItems[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
