import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_juice_app/all_juices.dart';
import 'package:fruit_juice_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
                fontWeight: FontWeight.w700, fontFamily: 'Architects Daughter'),
            bodyMedium: TextStyle(fontWeight: FontWeight.w500)),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.red),
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))),
        // colorScheme: ThemeData.dark().colorScheme.copyWith(
        //   error: ColorsItems.sulu,
        // ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: const JuiceHome(),
    );
  }
}
