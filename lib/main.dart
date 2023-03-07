import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const NlwApp());
}

class NlwApp extends StatelessWidget {
  const NlwApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NLW eSports',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
