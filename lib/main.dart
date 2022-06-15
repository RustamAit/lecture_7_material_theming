import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:lecture_6_material_theming/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        fontFamily: 'KdamThmorPro',
        colorScheme: Theme.of(context).colorScheme
            .copyWith(
              brightness: Brightness.light,
              primary: Colors.red,
              secondary: Colors.teal,
            ),
      ),
      dark: ThemeData(
        fontFamily: 'KdamThmorPro',
        colorScheme: Theme.of(context).colorScheme
            .copyWith(
              brightness: Brightness.dark,
              primary: Colors.red,
              secondary: Colors.teal,
            ),
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Adaptive Theme Demo',
        theme: theme,
        darkTheme: darkTheme,
        home: const MyHomePage(title: 'Flutter course'),
      ),
    );
  }


  /** USED UNTIL DARK THEME PART **/
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       colorScheme: Theme.of(context).colorScheme
  //           .copyWith(
  //              primary: Colors.red,
  //              secondary: Colors.teal,
  //           ),
  //         fontFamily: 'kdamThmorPro'
  //     ),
  //     home: const MyHomePage(title: 'My Material App'),
  //   );
  // }
}
