import 'package:flutter/material.dart';
import 'package:project/screens/cofeeList.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.fill,
            height: double.infinity,
          ),
          Positioned(
            child: Column(children: [
              Container(
                padding: const EdgeInsets.only(top: 100, left: 80),
                child: const Text(
                  "Coffee Shop",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'font'),
                ),
              ),
              const SizedBox(
                height: 480,
              ),
              Container(
                  padding: EdgeInsets.only(left: 70),
                  child: const Text(
                    "Feeling Low? Take a Sip Of Coffee",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  )),
              const SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return const coffeeList();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 80),
                  height: 60,
                  width: 180,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color(0xffC96827)),
                  child: const Text(
                    "Get Start",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
