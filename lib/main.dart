import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/AppPages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
   @override
 Widget build(BuildContext context) {
   return GetMaterialApp(
     title: 'Flutter Calculator App',
     debugShowCheckedModeBanner: false,
     initialRoute: AppPages.INITIAL,
     getPages: AppPages.routes,
      );
 }
}
