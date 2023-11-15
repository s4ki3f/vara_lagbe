import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          Row(
            children: [
              MenuInfo(
                  imgUrl: 'assets/icons/bedroom.svg',
                  content: '4 Bedroom\n3 Master Bedroom'),
              SizedBox(height: 3),
              MenuInfo(
                  imgUrl: 'assets/icons/bathroom.svg',
                  content: '2 Bathroom\n1 Toilet '),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              MenuInfo(
                  imgUrl: 'assets/icons/kitchen.svg',
                  content: '1 kitchen\n150 sqft'),
              SizedBox(height: 3),
              MenuInfo(
                  imgUrl: 'assets/icons/parking.svg',
                  content: '2 Parking\n200 sqft'),
            ],
          )
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imgUrl;
  final String content;
  const MenuInfo({Key? key, required this.imgUrl, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imgUrl),
            const SizedBox(width: 20),
            Text(
              content,
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
