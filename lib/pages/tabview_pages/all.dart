import 'package:flutter/material.dart';

class AllView extends StatelessWidget {
  final String image;
  final String text;
  final String smallText;
  final String amount;
  const AllView(
      {Key? key,
      required this.image,
      required this.text,
      required this.smallText,
      required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.38,
      width: w * 0.6,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            height: h * 0.25,
            width: w * 0.6,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(width: 5,),
                  Text(
                    smallText,
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Text(
                    amount,
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: Icon(
                  Icons.card_membership_rounded,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
