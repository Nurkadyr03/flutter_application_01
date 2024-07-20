import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_01/homePage/home_page.dart';
import 'package:flutter_application_01/screens/jobs/create_jobs.dart';
import 'package:flutter_application_01/screens/profile/profile.dart';
import 'package:flutter_application_01/screens/registration/number_phone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor:Color.fromARGB(3, 6, 236, 52) ),
        useMaterial3: true,
      ),
      home: const NumberPage(),
    );
  }
}






