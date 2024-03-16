import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png",
            width: 300,
            // color: const Color.fromARGB(104, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "xcvbnm,",
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(),
            icon: const Icon(
              Icons.arrow_back,
            ),
            label: const Text("Start ..!"),
          )
        ],
      ),
    );
  }
}
