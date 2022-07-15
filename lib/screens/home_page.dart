import 'package:event_app/widgets/calendar.dart';
import 'package:flutter/material.dart';

import '../widgets/event_category.dart';
import '../widgets/popular_events.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffffafbd), Color(0xffffc3a0)])),
            ),
            SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Event App",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.notification_add_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(
                          Icons.menu_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Hello' Dharmin",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Let's explore what's happening nearby",
                              style: TextStyle(fontSize: 17),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(3),
                          height: 57,
                          width: 57,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.25),
                              shape: BoxShape.circle),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/profile.jpg"),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Calendar(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Categories",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EventCategory(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Nearby Events",
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    PopularEvents(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
