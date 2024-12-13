import 'package:flutter/material.dart';
import 'package:jackson_website/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //await FirebaseClient().initNotifications();
  runApp(MaterialApp.router(
    routerConfig: router,
    debugShowCheckedModeBanner: false,
  ));
}
