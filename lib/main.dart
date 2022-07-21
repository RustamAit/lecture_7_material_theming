import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:lecture_6_material_theming/formscreen.dart';
import 'package:lecture_6_material_theming/homescreen.dart';
import 'package:lecture_6_material_theming/cv/imagelabellingscreen.dart';
import 'package:lecture_6_material_theming/styles.dart';

import 'cv/barcodescreen.dart';
import 'cv/peoplecounter.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: Colors.red,
            secondary: Colors.amberAccent,
          ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.redAccent,
        )
      ),
      home: const PeopleCounterPage(),
    );
  }
}
