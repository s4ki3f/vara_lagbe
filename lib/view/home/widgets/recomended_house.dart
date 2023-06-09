import 'package:flutter/material.dart';
import 'package:vara_lagbe/model/house.dart';
import 'package:vara_lagbe/view/details/details.dart';
import 'package:vara_lagbe/widgets/circle_icon_button.dart';

class RecomendedHouse extends StatelessWidget {
  final recomendedList = House.generateRecomendation();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 340,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return DetailPage(house: recomendedList[index]);
                  }));
                },
                child: Container(
                  height: 300,
                  width: 240,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(recomendedList[index].imgUrl),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: CircleIconButton(
                            iconUrl: 'assets/icons/mark.svg',
                            color: Colors.redAccent),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.white60,
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(recomendedList[index].name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                    Text(
                                      recomendedList[index].address,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                                CircleIconButton(
                                    iconUrl: 'assets/icons/mark.svg',
                                    color: Colors.redAccent)
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              )),
          separatorBuilder: (_, index) => SizedBox(width: 20),
          itemCount: recomendedList.length,
        ));
  }
}
