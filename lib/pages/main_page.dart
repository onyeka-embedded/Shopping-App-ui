import 'package:flutter/material.dart';
import 'package:shopping_app/pages/pagee.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    
   PageController _controller = PageController();
 final List _image = [
    "lib/images/firsttpage.jpg",
    "lib/images/secondpage.jpg",
    "lib/images/thirdpage.jpg"
  ];
  final List _mainText = [
    "Buy Groceries Easily With Us",
    "Buy Groceries At Affordable",
    "Buy Groceries Quickly With Us"
  ];

    @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }
  
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: PageView(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          onPageChanged: (value) {
            print(_controller);
            print(value);
          },
          children: [
            Pagee(imagee: _image[0], controller: _controller, mainText: _mainText[0],),
             Pagee(imagee: _image[1], controller: _controller, mainText: _mainText[1],),
             Pagee(imagee: _image[2], controller: _controller, mainText: _mainText[2],),
          ],
        ),
      ),
    );
  }
}
