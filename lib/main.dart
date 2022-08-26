import 'package:flutter/material.dart';

import 'Screens/airtime_subscription/ui/educational_payment.dart';
import 'Screens/airtime_subscription/ui/electric_bill_payment.dart';
import 'Screens/airtime_subscription/ui/home.dart';
import 'Screens/airtime_subscription/ui/internet_cabel.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const EducationalPayment(),
    );
  }
}

