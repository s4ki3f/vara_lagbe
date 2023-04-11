import 'package:flutter/material.dart';

class Catagories extends StatefulWidget {
  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  final CatagoriesList = [
    'Top Recomended',
    'Near you',
    'AI recomendation for you',
    'Most Popular'
  ];
  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelect = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: currentSelect == index
                                  ? Theme.of(context).primaryColor
                                  : Colors.transparent,
                              width: 3))),
                  child: Text(
                    CatagoriesList[index],
                    style: TextStyle(
                        color: currentSelect == index
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: currentSelect == index ? 16 : 14,
                        fontWeight: currentSelect == index
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: CatagoriesList.length),
    );
  }
}
