import 'package:flutter/material.dart';

class PopularEvents extends StatelessWidget {
  PopularEvents({
    Key? key,
  }) : super(key: key);

  final List<EventList> eventList = [
    EventList("assets/images/event1.png", "BTS Music", "12/05/2022",
        "California, Usa"),
    EventList("assets/images/event2.png", "Ab Sports", "25/07/2022",
        "Amsterdam, Netherlands"),
    EventList(
        "assets/images/event3.png", "Game Zone", "18/09/2022", "Paris, France"),
    EventList("assets/images/event4.png", "Virtual Hackathon", "09/011/2022",
        "Tokyo, Japan"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: eventList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.25),
                borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        eventList[index].decs,
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/calendar.png",
                            height: 15,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            eventList[index].date,
                            style: const TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/location.png",
                            height: 15,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            eventList[index].address,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  eventList[index].img,
                  height: 100,
                )
              ],
            ),
          );
        });
  }
}

class EventList {
  final String img;
  final String decs;
  final String date;
  final String address;

  EventList(this.img, this.decs, this.date, this.address);
}
