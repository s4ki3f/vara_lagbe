import 'package:flutter/material.dart';
import 'package:vara_lagbe/model/house.dart';

class ConetentIntro extends StatelessWidget {
  final House house;
  const ConetentIntro({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(house.name,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(house.address,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 16)),
          const SizedBox(height: 10),
          const Text('20,000sqft'),
          const SizedBox(height: 5),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '\$500000 ',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Per Month',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14))
          ]))
        ],
      ),
    );
  }
}
