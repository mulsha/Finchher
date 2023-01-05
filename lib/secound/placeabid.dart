import 'dart:ui';

import 'package:flutter/material.dart';

class placebid extends StatefulWidget {
  const placebid({Key? key}) : super(key: key);

  @override
  State<placebid> createState() => _placebidState();
}

class _placebidState extends State<placebid> {
  List img1 = ["images/em1.png", "images/em2.png", "images/em3.png"];
  List name1 = ["Recyep", "Diverse", "Smatical"];
  List eth1 = ["0.261 ETH", "0.061 ETH", "1.12 ETH"];
  List price1 = ["2172.2", "15172.2", "4272.2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) {
                      //     return home();
                      //   },
                      // ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFDDDDDD),
                      ),
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 63),
                    child: Center(
                        child: Text(
                      "Details",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 21,
                          letterSpacing: 1,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forsy hand",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) {
                  //     return forsyhand(widget.img, widget.name, widget.price,
                  //         widget.eth, widget.index);
                  //   },
                  // ));
                },
                child: Container(
                  height: 180,
                  width: 290,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: Colors.orange,
                      image: DecorationImage(
                        image: AssetImage("images/con1.png"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Container(
                height: 80,
                width: 280,
                decoration: BoxDecoration(
                    color: Color(0XFFE7EBFD),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Current Bid",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          child: Text("1.261 ETH",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0XFF2D52EF),
                                  fontFamily: 'Poppins')),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            '\$4517.2',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Ending in",
                            style: TextStyle(
                                fontSize: 19, color: Color(0XFF2D52EF)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5, top: 7),
                          child: IntrinsicHeight(
                            child: Row(
                              children: [
                                Text(
                                  "26 Days",
                                  style: TextStyle(
                                      fontSize: 13, fontFamily: 'Poppins'),
                                ),
                                VerticalDivider(
                                  color: Colors.grey,
                                  // width: 5,
                                  thickness: 1.5,
                                ),
                                Text(
                                  "08 Hours",
                                  style: TextStyle(
                                      fontSize: 13, fontFamily: 'Poppins'),
                                ),
                                VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 1.5,
                                ),
                                Text(
                                  "56 Mins",
                                  style: TextStyle(
                                      fontSize: 13, fontFamily: 'Poppins'),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Explore More",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  // color: Colors.orange,
                  child: GridView.builder(
                    // itemCount: img.length,
                    itemCount: img1.length,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 240, mainAxisExtent: 150),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(
                          //   builder: (context) {
                          //     return fdetails(img,price,name,eth, index);
                          //   },
                          // ));
                        },
                        child: Card(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            // color: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  image: AssetImage(img1[index]),
                                  fit: BoxFit.fitWidth,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 6),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          name1[index],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Poppins',
                                              color: Colors.black),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          eth1[index],
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              color: Color(0XFF2D52EF)),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          price1[index],
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'Poppins',
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
