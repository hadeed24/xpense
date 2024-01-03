import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:xpense_flutter_web/pages/home.dart';
import 'package:xpense_flutter_web/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyD-appR7-yMO15Rg9YQCYoYJPts3I0GwDw",
          appId: "1:1033914524353:web:ce8ec48037609afb156a40",
          messagingSenderId: "1033914524353",
          projectId: "xpense-d899c"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpense',
      theme: ThemeData(
        fontFamily: 'HindSiliguri',
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
      ),
      home: Home(),
    );
  }
}
