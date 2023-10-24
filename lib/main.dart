import 'package:dancing/controllers/auth_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dancing/pages/sign_up_screen.dart';
import 'package:get/get.dart';
import 'package:dancing/pages/home.dart';
import 'package:dancing/pages/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dancing',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black12,
      ),
      home: SingupScreen(),
    );
  }
}
