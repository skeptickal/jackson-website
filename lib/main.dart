import 'package:flutter/material.dart';
import 'package:jackson_website/jackson_bloc_provider.dart';
import 'package:jackson_website/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //await FirebaseClient().initNotifications();
  runApp(JacksonBlocProvider(
    child: MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    ),
  ));
}
