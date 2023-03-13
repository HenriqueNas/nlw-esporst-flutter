import 'package:flutter/material.dart';
import 'package:nlw/models/game_model.dart';

import '../widgets/game_card.dart';
import '../widgets/heading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final game = const GameModel(
    id: '1',
    ads: 4,
    title: 'Valorant',
    image:
        'https://m.media-amazon.com/images/M/MV5BODhkN2U1YzYtODQzZC00MTc5LTlmMmYtYjQ2ZGU2ZmM4YzJkXkEyXkFqcGdeQXVyMTE0MTc4MjU2._V1_FMjpg_UX1000_.jpg',
  );

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
              const Heading('Encontre seu duo!'),
              const Heading(
                'Selecione o game que deseja jogar...',
                type: HeadingTypes.subtitle,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 320,
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemBuilder: (_, __) => GameCard(game: game),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  clipBehavior: Clip.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
