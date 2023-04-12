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
          Text(house.name,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(house.address,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 16)),
          SizedBox(height: 10),
          Text('20,000sqft'),
          SizedBox(height: 5),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '\$500000 ',
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
