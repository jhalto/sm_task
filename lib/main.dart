import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sm_task/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (p0, p1, p2) {
      return MaterialApp(
        title: 'SM Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Home(),
      );
    },);
  }
}
