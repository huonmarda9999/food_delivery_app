import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(() => TextField(
                  onChanged: (value) => loginController.email.value = value,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    errorText: loginController.email.value.isEmpty
                        ? 'Email cannot be empty'
                        : null,
                  ),
                )),
            Obx(() => TextField(
                  onChanged: (value) => loginController.password.value = value,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    errorText: loginController.password.value.isEmpty
                        ? 'Password cannot be empty'
                        : null,
                  ),
                )),
            SizedBox(height: 20),
            Obx(() => loginController.isLoading.value
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: loginController.login,
                    child: Text('Login'),
                  )),
          ],
        ),
      ),
    );
  }
}
