import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Espresso extends StatefulWidget {
  Espresso({super.key});

  @override
  State<Espresso> createState() => _latteScreenState();
}

class _latteScreenState extends State<Espresso> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff212325),
        body: Container(
          child: Column(children: [
            Container(
              width: double.infinity,
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 15),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromARGB(255, 146, 145, 145),
                    size: 25,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      margin: const EdgeInsets.only(right: 30),
                      alignment: Alignment.center,
                      child: const Image(
                        image: AssetImage("assets/images/Espresso.png"),
                        width: 350,
                        height: 250,
                      )),
                  const SizedBox(
                    height: 75,
                  ),
                  const Text(
                    "BEST COFFEE",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Espresso ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Container(
                      width: 180,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: const Color(0xff222227),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Row(
                        children: [
                          const Spacer(
                            flex: 1,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                number++;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.orange),
                              child: const Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 3,
                          ),
                          Text(
                            "$number",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                          const Spacer(
                            flex: 3,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (number > 1) {
                                  number--;
                                }
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.orange),
                              child: const Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                   const SizedBox(width: 60,),
                    const Text(
                      "Price",
                      style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 28),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      "${number * 35}",
                      style: const TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                  const SizedBox(height: 40,),
                  const Text("Coffee is a majorsource of antioxidants in the",style: TextStyle(color: Colors.grey,fontSize: 16),),
                  const Text("diet .it has many benefits.",style: TextStyle(color: Colors.grey,fontSize: 16)),
                  const SizedBox(height: 25,),
                 const Text("Volume :     60 ml",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                 const SizedBox(height: 25,),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 220,
                        height: 70,
                        decoration: BoxDecoration(
                          color:const  Color.fromARGB(255, 72, 78, 82),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Text("Add to Cart",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                        ),),
                      ),
                      const SizedBox(width: 30,),
                      Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Icon(Icons.favorite_outline,color: Colors.black,size: 25,),
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
