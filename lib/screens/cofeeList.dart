import 'package:flutter/material.dart';
import 'package:project/components/cafeCard.dart';
import 'package:project/screens/Espresso.dart';
import 'package:project/screens/blackCoffee.dart';
import 'package:project/screens/coldCofee.dart';
import 'package:project/screens/latteScreen.dart';

// ignore: camel_case_types
class coffeeList extends StatefulWidget {
  const coffeeList({super.key});

  @override
  State<coffeeList> createState() => _codeeListState();
}

class _codeeListState extends State<coffeeList> {
  bool isTap = true;
  Color home = Colors.white;
  Color fav = Colors.white;
  Color notif = Colors.white;
  Color person = Colors.white;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1C1D1E),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.sort_rounded,
                        size: 35,
                        color: Color(0xff919394),
                      )),
                  const Spacer(
                    flex: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isTap = !isTap;
                        });
                      },
                      icon: Icon(
                        Icons.notifications,
                        size: 35,
                        color: isTap ? const Color(0xff919394) : Colors.yellow,
                      )),
                  const Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "It is a Great Day For Cofee",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff323638),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 5, bottom: 10),
              width: 380,
              height: 60,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                  hintText: "Find Your Coffee",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30),
              child: const Row(
                children: [
                  Text(
                    "Hot Coffee",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Spacer(
                          flex: 1,
                        ),
                        cafeCard(
                            imageUrl: "assets/images/Latte.png",
                            text1: "Latte",
                            price: "\$30",
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return  latteScreen();
                              }));
                            }),
                        const Spacer(
                          flex: 2,
                        ),
                        cafeCard(
                            imageUrl: "assets/images/Espresso.png",
                            text1: "Espresso",
                            price: "\$35",
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return  Espresso();
                              }));
                            }),
                        const Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Spacer(
                          flex: 1,
                        ),
                        cafeCard(
                            imageUrl: "assets/images/Cold Coffee.png",
                            text1: "Cold Coffee",
                            price: "\$40",
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return  coldCofee();
                              }));
                            }),
                        const Spacer(
                          flex: 2,
                        ),
                        cafeCard(
                            imageUrl: "assets/images/Black Coffee.png",
                            text1: "Black Coffee",
                            price: "\$45",
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return  Blackcoffee();
                              }));
                            }),
                        const Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ]),
            ),
            Container(
                decoration: const BoxDecoration(
                  border:
                      Border(top: BorderSide(color: Colors.black, width: 3)),
                  color: Color(0xff1A1C1D),
                ),
                width: double.infinity,
                height: 7),
            Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        home = Colors.orange;
                        fav = Colors.white;
                        notif = Colors.white;
                        person = Colors.white;
                      });
                    },
                    icon: Icon(
                      Icons.home,
                      size: 40,
                      color: home,
                    )),
                const Spacer(
                  flex: 5,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        home = Colors.white;
                        fav = Colors.orange;
                        notif = Colors.white;
                        person = Colors.white;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      size: 40,
                      color: fav,
                    )),
                const Spacer(
                  flex: 5,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        home = Colors.white;
                        fav = Colors.white;
                        notif = Colors.orange;
                        person = Colors.white;
                      });
                    },
                    icon: Icon(
                      Icons.notifications,
                      size: 40,
                      color: notif,
                    )),
                const Spacer(
                  flex: 5,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        home = Colors.white;
                        fav = Colors.white;
                        notif = Colors.white;
                        person = Colors.orange;
                      });
                    },
                    icon: Icon(
                      Icons.person,
                      size: 40,
                      color: person,
                    )),
                const Spacer(
                  flex: 1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
