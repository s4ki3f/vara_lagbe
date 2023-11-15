import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Konnichiwa Mina desh',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Genki desuka, Hina Sama',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
