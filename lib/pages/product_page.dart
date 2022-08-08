import 'package:flutter/material.dart';
import 'package:shopping_app/pages/tabview_pages/all.dart';
import 'package:shopping_app/text_style/textstyle.dart';

import 'detail_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage> with TickerProviderStateMixin{
  List text = [
    "Orange Fruit",
    "Broccoli Vegetable",
    "Opiolo Mango"
  ];

   List smallText = [
    "Fruit",
    "Vegetable",
    "Fruit"
  ];
   List amount = [
    "\$14.99",
    "\$29.99",
    "\$12.99"
  ];
  
  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();
    TabController _tabController = TabController(length: 5, vsync: this);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
      return SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Welcome",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                          Text(
                            "Nafius Ibrahim",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(18)),
                      child: const Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "Search Grocery",
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(Icons.search, size: 25,),
                          iconColor: Colors.grey.shade700,
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Colors.white
                            ),
                          ),
                           focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 1.0, color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 1.0, color: Colors.white)),
                          ),
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                          color: Colors.grey.shade700),
                    ),
                  ),
                  const SizedBox(width: 13,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(18)),
                        child: const Icon(Icons.line_style, color: Colors.green,),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                child:  TabBar(
                  labelPadding: const EdgeInsets.only(left: 0, right: 30),
                  controller: _tabController,
                  labelColor: Colors.green.shade300,
                  unselectedLabelColor: Colors.grey.shade500,
                  isScrollable: true,
                  labelStyle: MyTextStyle.styleA,
                  indicatorSize: TabBarIndicatorSize.label,
                //  is
                  tabs: const  [
                    Tab(text: "All",),
                    Tab(text: "Fruit",),
                    Tab(text: "Vegetable",),
                    Tab(text: "Meat",),
                    Tab(text: "Diary",),
                  ],
                ),
              ),
                const SizedBox(height: 25),
                Container(
                  height: h*0.38,
                  width: w ,
                  child: TabBarView(
                    controller: _tabController,
                    children:  [
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index){
                              return GestureDetector(
                                onTap: (){
                                  print(index);
                                   Navigator.push(
                               context, MaterialPageRoute(builder: (context) =>  DetailPage(index: index)));
                                },
                                child: AllView(
                                  image: "lib/images/ok2.jpg", 
                                  text: text[index], 
                                  smallText: smallText[index], 
                                  amount: amount[index]),
                              );
                        }),
                    
                      Text("View 2"),
                      Text("View 3"),
                      Text("View 4"),
                      Text("View 5"),
                    ]
                    ),
                ),
         const SizedBox(height: 10),
                     const Text(
                    "Recent Shop",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ), 
           const SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            height: h*0.10,
            width: w ,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                 height:  h*0.10,
                 width:  h*0.10,
                 decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(Icons.leave_bags_at_home_outlined, color: Colors.green, size: 40,),
                ),
               Container(
                 padding: const EdgeInsets.only(top: 12),
                 child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                    "Celery vegetable",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ), 
           Text(
                    "Vegetable",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.grey),
          ), 
        
                  ],
                ),
               ),
                const Text(
                    "\$10.99",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green),
          ),
          const SizedBox(width:3),
              ],
            ),
          )  
            ],
          ),
        ),
      );
  }

  _boldStyle(double size, Color color) {
    TextStyle(
        fontFamily: "Poppins",
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: color);
  }
}
