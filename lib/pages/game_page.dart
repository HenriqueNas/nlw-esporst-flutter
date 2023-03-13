import 'package:flutter/material.dart';
import 'package:nlw/models/ad_model.dart';
import 'package:nlw/models/game_model.dart';

import '../widgets/ad_card.dart';
import '../widgets/heading.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final game = ModalRoute.of(context)?.settings.arguments as GameModel;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          height: 40,
        ),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded, size: 40),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 110,
              right: 32,
              left: 32,
              bottom: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    game.image,
                    height: 160,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(height: 24),
                Heading(game.title),
                const Heading(
                  'Conecte-se e comece a jogar!',
                  type: HeadingTypes.subtitle,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                    itemCount: 10,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder: (context, index) => AdCard(
                      ad: AdModel(
                        id: '1',
                        gameId: '1',
                        name: 'Lucas',
                        yearsPlayed: 2,
                        discord: 'HenriqueNas#3412',
                        weekDays: [6, 7, 1],
                        hourStart: 22,
                        hourEnd: 24,
                        useVoiceChannel: true,
                        createdAt: DateTime.now(),
                      ),
                    ),
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    clipBehavior: Clip.none,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
