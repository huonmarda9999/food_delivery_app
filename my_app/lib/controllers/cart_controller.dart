import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Map<String, String>>[].obs;

  void addToCart(Map<String, String> item) {
    cartItems.add(item);
    Get.snackbar('Success', '${item['name']} has been added to the cart');
  }

  void removeFromCart(Map<String, String> item) {
    cartItems.remove(item);
    Get.snackbar('Removed', '${item['name']} has been removed from the cart');
  }
}
