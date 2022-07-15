import 'package:flutter/material.dart';

class EventCategory extends StatelessWidget {
  EventCategory({
    Key? key,
  }) : super(key: key);

  final List<EventCategoryList> eventList = [
    EventCategoryList("Music", "assets/images/category1.png"),
    EventCategoryList("Education", "assets/images/category2.png"),
    EventCategoryList("Game", "assets/images/category3.png"),
    EventCategoryList("Sport", "assets/images/category4.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: eventList.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.25),
                borderRadius: BorderRadius.circular(14),
              ),
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      eventList[index].img,
                      height: 60,
                      width: 60,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Text(
                      eventList[index].name,
                      style: const TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

class EventCategoryList {
  final String name;
  final String img;

  EventCategoryList(this.name, this.img);
}
