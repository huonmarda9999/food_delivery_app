import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/veiws/login_veiw.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login GetX Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:
            Colors.grey[200], // Background color for all pages
        appBarTheme: AppBarTheme(
          color: Colors.blueAccent, // Color of AppBars
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor:
              Colors.white, // Background color for BottomNavigationBar
          selectedItemColor: Colors.blueAccent, // Color of selected item
          unselectedItemColor: Colors.grey, // Color of unselected items
        ),
      ),
      home: LoginView(),
    );
  }
}
