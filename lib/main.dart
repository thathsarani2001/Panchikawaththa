// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_app/screens/admin_page.dart';
import 'package:my_app/screens/buy_screen.dart';
import 'package:my_app/screens/manage_accounts.dart';
import 'package:my_app/screens/sellerLocation.dart';
import 'package:my_app/screens/sellers.dart';
import 'package:my_app/screens/services_page2.dart';
import 'package:my_app/screens/view_Analytics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 25, 20, 19)),
        useMaterial3: true,
      ),
      home: AdminPage(),
    );
  }
}
