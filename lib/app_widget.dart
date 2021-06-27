import 'package:flutter/material.dart';
import 'package:playflow/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:playflow/modules/home/home_page.dart';
import 'package:playflow/modules/login/login_page.dart';
import 'package:playflow/modules/splash/splash_page.dart';
import 'package:playflow/shared/themes/AppColors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Play Flow',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          primaryColor: AppColors.primary),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => SplashPage(),
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
          "/barcode_scanner": (context) => BarcodeScannerPage()
      }
    );
  }
}

