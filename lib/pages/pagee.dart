import 'package:flutter/material.dart';
import 'package:shopping_app/buttons/get_started_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login_page.dart';

class Pagee extends StatelessWidget {
  final String imagee;
  final String mainText;

  final PageController controller;

  const Pagee({
    Key? key,
    required this.imagee,
    required this.controller,
    required this.mainText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.black,
      //alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(imagee),
              ),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 55, right: 55),
              alignment: Alignment.center,
              child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        mainText,
                        style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Center(
                      child: Text(
                        "Buy food or Groceries online Easily With mobile phona",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ])),
          const SizedBox(
            height: 12,
          ),
          Container(
            
            child: Column(
              children: [
                SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: ScrollingDotsEffect(
              activeDotColor: Colors.green.shade700,
              dotHeight: 8,
              dotWidth: 8,
              dotColor: Colors.green.shade100
               ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          GestureDetector(
            onTap:(){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            child: const GetStartedButton(
              text: "Get Started",
              buttonW: 0.52,
              buttonH: 68,
            ),
          )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h);
    path.quadraticBezierTo(
      w * 0.5,
      h - 70,
      w,
      h,
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
