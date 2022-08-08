import 'package:flutter/material.dart';
import 'package:shopping_app/buttons/get_started_button.dart';
import 'nav_bar/nav_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 224, 247, 231),
      body: Center(
        child: Container(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 10),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Username",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800),
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    prefixIcon: const Icon(Icons.email),
                    iconColor: Colors.grey.shade700,
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1.0, color: Colors.green.shade300)),
                    hintText: 'email'),
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    color: Colors.grey.shade700),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800),
              ),
              TextField(
                //     enabled: true,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    prefixIcon: const Icon(Icons.password),
                    iconColor: Colors.grey.shade700,
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1.0, color: Colors.green.shade300)),
                    hintText: 'password'),
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    color: Colors.grey.shade700),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Checkbox(value: false, onChanged: null),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    "keep me logged in",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        color: Colors.grey.shade800),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                 onTap:(){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MainNavView()));
            },
                child: const Center(
                    child: GetStartedButton(
                  text: "Login",
                  buttonW: 0.9,
                  buttonH: 45,
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  Text(
                    "Dont have an account? ",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        //fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                  Text(
                    "Create an account",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
