import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:freelancer_app/module/login/view/login_view.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAjaGYDdHvb0_vsG3JRS6ZVUegaicjn5Uo",
      projectId: "freeproject-c8687",
      appId: "1:803703594987:web:1eab5d874a2b50260783ae",
      messagingSenderId: "803703594987",
    ),
  );

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    home: LoginView(),
  ));
}
