import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/splashscreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: VariableUtils.title,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Splashscreen(),
        );
      },
    );
  }
}
