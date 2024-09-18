import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class cafeCard extends StatelessWidget {
  cafeCard(
      {super.key,
      required this.imageUrl,
      required this.text1,
      required this.price,
      required this.onPressed});
  String imageUrl;
  String text1;
  String price;
  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Colors.black, offset: Offset(4, 8))
          ],
          color: const Color(0xff212325),
          borderRadius: BorderRadius.circular(10)),
      width: 180,
      height: 280,
      child: Column(
        children: [
          Image(
            image: AssetImage(imageUrl),
            width: 130,
            height: 130,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            alignment: Alignment.topLeft,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "$text1",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5,),
              const Text(
                "Best Coffee",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const Spacer(
                flex: 1,
              ),
              Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(
                flex: 10,
              ),
              GestureDetector(
                onTap: onPressed,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xffF87C2B),
                      borderRadius: BorderRadius.circular(20)),
                  width: 35,
                  height: 35,
                  child: const Text(
                    "+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              )
            ],
          )
        ],
      ),
    );
  }
}
