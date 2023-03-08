import 'package:flutter/material.dart';

import '../widgets/game_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final image =
      'https://cdn1.epicgames.com/offer/24b9b5e323bc40eea252a10cdd3b2f10/LoL_1200x1600-15ad6c981af8d98f50e833eac7843986';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/logo.png'),
              const Text(
                'Encontre seu duo!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 38 / 24,
                ),
              ),
              const Text(
                'Selecione o game que deseja jogar...',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFA1A1AA),
                  height: 26 / 16,
                ),
              ),
              const SizedBox(height: 20),
              GameCard(
                image: image,
                ads: 4,
                title: 'League of Legends',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
