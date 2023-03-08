import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  const AdCard({super.key});

  final labelStyle = const TextStyle(color: Color(0xFFC4C4C6), fontSize: 14);
  final valueStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  final useVoiceStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Color(0xFF34D399),
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: const Color(0xFF2A2634),
      clipBehavior: Clip.antiAlias,
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 300,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Nome', style: labelStyle),
            Text('Henrique Nascimento', style: valueStyle),
            const SizedBox(height: 4),
            Text('Tempo de jogo', style: labelStyle),
            Text('2 anos', style: valueStyle),
            const SizedBox(height: 4),
            Text('Disponibilidade', style: labelStyle),
            Text('3 dias', style: valueStyle),
            const SizedBox(height: 4),
            Text('Chamada de áudio?', style: labelStyle),
            Text('Sim', style: useVoiceStyle),
            const SizedBox(height: 4),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8B5CF6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.sports_esports_outlined),
                    Text('Conectar'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
