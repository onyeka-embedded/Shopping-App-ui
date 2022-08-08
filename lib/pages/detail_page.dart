import 'package:flutter/material.dart';
import 'package:shopping_app/buttons/get_started_button.dart';

class DetailPage extends StatefulWidget {
  final int index;
  const DetailPage({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List text = ["Orange Fruit", "Broccoli Vegetable", "Opiolo Mango"];
  final String des =
      "e::disconnect(this=0x6fca544000e::disconnect(this=0x6fca544000Re::disconnect(this=0x6fca544000";

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.grey.shade100,
          height: h,
          width: w,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    height: h * 0.45,
                    width: w,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                  top: 40,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 250, 240, 243),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.brown,
                        ),
                      ),
                      Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 250, 240, 243),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Icon(
                            Icons.shopping_cart,
                            color: Colors.brown,
                          ))
                    ],
                  )),
              Positioned(
                  top: h * 0.15,
                  left: w * 0.18,
                  right: w * 0.18,
                  child: Container(
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(110),
                          image: const DecorationImage(
                            image: AssetImage("lib/images/ok2.jpg"),
                            fit: BoxFit.cover,
                          )))),
              Positioned(
                  top: h * 0.47,
                  left: 15,
                  right: 15,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Orange Fruit",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 1,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                child: Row(
                              children: [
                                Wrap(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      Icons.star,
                                      color: index < 4
                                          ? Colors.orange
                                          : Colors.grey,
                                    );
                                  }),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "(4)",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )
                              ],
                            )),
                            SizedBox(
                              width: w / 4.5,
                            ),
                            Container(
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.green.shade100,
                                    child: const Icon(
                                      Icons.remove,
                                      color: Color.fromARGB(255, 133, 151, 133),
                                    ),
                                  ),
                                  const Text(
                                    "1",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  const CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Description",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                des,
                                style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                                //textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 300,
                          width: w,
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Text("MAP"))),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    color: Colors.white,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "price",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                "\$14.99",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ]),
                        GetStartedButton(
                            text: "Add to Cart", buttonW: 0.45, buttonH: 65)
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h - 40);
    path.quadraticBezierTo(
      w * 0.5,
      h + 40,
      w,
      h - 40,
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
