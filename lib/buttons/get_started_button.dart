import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final String text;
  final double buttonW;
  final double buttonH;
  const GetStartedButton({Key? key, required this.text, required this.buttonW, required this.buttonH}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: buttonH,
        width: MediaQuery.of(context).size.width * buttonW,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: "Mukta",
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ));
  }
}
