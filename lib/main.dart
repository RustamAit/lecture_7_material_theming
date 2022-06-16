import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:lecture_6_material_theming/homescreen.dart';
import 'package:lecture_6_material_theming/styles.dart';

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
              primary: Colors.teal,
              secondary: Colors.tealAccent,
            ),
        appBarTheme: const AppBarTheme(
          color: Colors.black38,
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontFamily: "KdamThmorPro",
            color: Colors.white
          ),
          iconTheme: IconThemeData(
            color: Colors.white
          )
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black38
        )
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
  //       scaffoldBackgroundColor: Colors.white,
  //       colorScheme: Theme.of(context).colorScheme.copyWith(
  //           primary: Colors.red,
  //           secondary: Colors.amberAccent,
  //         ),
  //       fontFamily: 'kdamThmorPro',
  //       bottomAppBarTheme: const BottomAppBarTheme(
  //         color: Colors.redAccent,
  //       )
  //     ),
  //     home: const MyHomePage(title: 'My Material App'),
  //   );
  // }
}
