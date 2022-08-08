import 'package:flutter/material.dart';

import '../product_page.dart';

class MainNavView extends StatefulWidget {
  const MainNavView({ Key? key }) : super(key: key);

  @override
  State<MainNavView> createState() => _MainNavViewState();
}

class _MainNavViewState extends State<MainNavView> {
  int _currentIndex = 0;

    void onTap(int index){
        setState(() {
          _currentIndex = index;
        });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
       backgroundColor: Colors.grey[200],
      
      body: const ProductPage(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        onTap: onTap,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items:  [
          const BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home,)),
          const BottomNavigationBarItem(label: "Home", icon: Icon(Icons.card_travel)),
          BottomNavigationBarItem(label: "Home", icon: 
          Container(
               height: 50,
                width: 50,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.green,
                ),
                child: const Icon(
                  Icons.fingerprint_outlined,
                  color: Colors.white,
                ),
              )),
          const BottomNavigationBarItem(label: "Home", icon: Icon(Icons.lock)),
          const BottomNavigationBarItem(label: "Home", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}