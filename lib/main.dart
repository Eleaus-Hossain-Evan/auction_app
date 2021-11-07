import 'package:auction_app/controller/homeController.dart';
import 'package:auction_app/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
        initialRoute: '/',
        getPages: [
          GetPage(
            name: '/',
            page: () => HomePage(),
            binding: BindingsBuilder(() => {Get.put(HomeController())}),
          ),
        ]);
  }
}
