import 'package:flutter/material.dart';

import 'heading.dart';

class ConnectDialog extends StatelessWidget {
  const ConnectDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF2A2634),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.check_circle_outline_rounded,
            color: Color(0xFF34D399),
            size: 64,
          ),
          const SizedBox(height: 24),
          const Heading("Let's play!"),
          const Heading(
            'Agora é só começar a jogar!',
            type: HeadingTypes.subtitle,
          ),
          const SizedBox(height: 24),
          const Text(
            'Adicione no Discord',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: 231,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF18181B),
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFFE4E4E7),
                ),
              ),
              child: const Text('Diegoww#1549'),
            ),
          ),
        ],
      ),
    );
  }
}
