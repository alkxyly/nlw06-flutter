import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:playflow/modules/home/home_page.dart';
import 'package:playflow/modules/login/login_page.dart';
import 'package:playflow/modules/splash/splash_page.dart';
import 'package:playflow/shared/themes/AppColors.dart';

import 'app_widget.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {

  @override
  State<AppFirebase> createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();


  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(
              child: Center(
                child: Text(
                  'Não foi possível inicializar o firebase',
                  textDirection: TextDirection.ltr
                ),
              )
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        }

        return Material(child: Center(child: CircularProgressIndicator()));
      },
    );
  }
}

