import 'package:flutter/material.dart';
import 'package:nlw/models/ad_model.dart';

import 'connect_dialog.dart';

class AdCard extends StatelessWidget {
  const AdCard({
    super.key,
    required this.ad,
  });

  final AdModel ad;

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
            Text(ad.name, style: valueStyle),
            const SizedBox(height: 4),
            Text('Tempo de jogo', style: labelStyle),
            Text('${ad.yearsPlayed} anos', style: valueStyle),
            const SizedBox(height: 4),
            Text('Disponibilidade', style: labelStyle),
            Text('${ad.weekDays.length} dias', style: valueStyle),
            const SizedBox(height: 4),
            Text('Chamada de áudio?', style: labelStyle),
            Text(ad.useVoiceChannel ? 'Sim' : 'Não', style: useVoiceStyle),
            const SizedBox(height: 4),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const ConnectDialog(),
                  );
                },
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
