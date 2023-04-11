import 'dart:html';

import 'package:flutter/material.dart';

import '../../../model/house.dart';

class BestOffer extends StatelessWidget {
  final listOfOffer = House.generateOffer();
  final recomendedList = House.generateRecomendation();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Offer',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('See all',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 10),
          ...listOfOffer
              .map((e) => Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        recomendedList[index].imgUrl),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
