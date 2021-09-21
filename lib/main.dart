import 'package:captaionshop/Screens/Slash.dart';
import 'package:captaionshop/Screens/auth/SignIn.dart';
import 'package:captaionshop/Screens/auth/Signup.dart';
import 'package:captaionshop/context/RouteBinding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      initialRoute: "/slash",
      getPages: [
        GetPage(name: "/slash", page: () => Slash(), binding: RouteBinding()),
        GetPage(name: "/signup", page: () => SignUp(), binding: RouteBinding()),
        GetPage(name: "/signin", page: () => SignIn()),
      ],
    );
  }
}
