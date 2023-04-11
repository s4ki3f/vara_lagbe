import 'package:flutter/material.dart';
import 'package:vara_lagbe/model/house.dart';

class ConetentIntro extends StatelessWidget {
  final House house;
  const ConetentIntro({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(house.name),
          Text(house.address),
          Text('20,000sqft'),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '\$500000',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Per Month',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 14))
          ]))
        ],
      ),
    );
  }
}
