import 'package:flutter/material.dart';
import 'package:nlw/pages/game_page.dart';

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
        textTheme: Typography.whiteRedwoodCity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/game': (context) => const GamePage(),
      },
    );
  }
}
