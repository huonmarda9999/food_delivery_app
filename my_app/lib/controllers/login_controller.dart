import 'package:get/get.dart';
import 'package:my_app/veiws/home_view.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;

  void login() async {
    isLoading(true);
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    isLoading(false);

    // Here you can add your login logic
    if (email.value == "123" && password.value == "123") {
      Get.snackbar("Success", "Login successful!");
      Get.off(() => HomeView());
    } else {
      Get.snackbar("Error", "Login failed! Check your credentials.");
    }
  }
}
