import 'package:flutter/material.dart';

class RPhonemPage extends StatefulWidget {
  const RPhonemPage({super.key});

  @override
  State<RPhonemPage> createState() => _RPhonemPageState();
}

class _RPhonemPageState extends State<RPhonemPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orange.shade50,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.waves_rounded,
              size: 50,
              color: Colors.orange,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Fonema /R/ Brando',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Treine a vibração da ponta da língua no céu da boca em palavras como "Cora", "Maro", "Arara" e "Pera".',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey, height: 1.5),
          ),
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade50,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.deepPurple.shade200),
            ),
            child: const Text(
              'Dica: Sinta o toque rápido da língua na gengiva superior.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
