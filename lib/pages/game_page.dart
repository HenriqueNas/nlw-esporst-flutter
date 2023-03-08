import 'package:flutter/material.dart';

import '../widgets/ad_card.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  final image =
      'https://cdn1.epicgames.com/offer/24b9b5e323bc40eea252a10cdd3b2f10/LoL_1200x1600-15ad6c981af8d98f50e833eac7843986';

  @override
  Widget build(BuildContext context) {
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
                    image,
                    height: 160,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'League of Legends',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 38 / 24,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Conecte-se e comece a jogar!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFA1A1AA),
                    height: 16 / 26,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                    itemCount: 10,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder: (context, index) => const AdCard(),
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
