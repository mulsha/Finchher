import 'package:fincherr/secound/placeabid.dart';
import 'package:flutter/material.dart';

class forsyhand extends StatefulWidget {
  List<String> img;
  List<String> name;
  List<String> price;
  List<String> eth;
  int index;

  forsyhand(this.img, this.name, this.price, this.eth, this.index);

  @override
  State<forsyhand> createState() => _forsyhandState();
}

class _forsyhandState extends State<forsyhand> {
  List eth = [
    "1.211 ",
    "1.211 ",
    "0.911 ",
    "0.691 ",
    "1.211 ",
    "1.211 ",
    "0.911 ",
    "0.691 "
  ];
  List time = [
    "15th June, 11:32 AM",
    "15th June, 11:32 AM",
    "15th June, 11:32 AM",
    "15th June, 11:32 AM",
    "15th June, 11:32 AM",
    "15th June, 11:32 AM",
    "15th June, 11:32 AM",
    "15th June, 11:32 AM"
  ];
  List imgg = [
    "l1.png",
    "l3.png",
    "l4.png",
    "l5.png",
    "l1.png",
    "l3.png",
    "l4.png",
    "l5.png"
  ];
  bool isswitch = false;

  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: th*0.47,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.img[widget.index]),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          height: 40,
                          // color: Colors.green,
                          margin: EdgeInsets.only(left: 63),
                          child: Center(
                              child: Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 21,
                                letterSpacing: 1,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(15)),
                  child: Container(
                    width: double.infinity,
                    height: 387,
                    decoration: BoxDecoration(
                      color: Color(0XFFE7EBFD),
                      // borderRadius: BorderRadius.only(
                      //     topRight: Radius.circular(15),
                      //     topLeft: Radius.circular(15))
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return placebid();
                                  },
                                ));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10, top: 10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  widget.name[widget.index],
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      elevation: 10,
                                      child: Container(
                                        height: 300,
                                        width: 500,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              child: Text(
                                                "Place a Bid",
                                                style: TextStyle(
                                                    fontSize: 23,
                                                    fontFamily: 'Poppins',
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 18,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 190,
                                              decoration: BoxDecoration(
                                                  color: Color(0XFFF4F4F4),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5),
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        shape: BoxShape.circle),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Image(
                                                      image: AssetImage(
                                                          "images/diamond.png")),
                                                  Container(
                                                    child: Text(
                                                      "1.3417 ETH",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 5),
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0XFF2D52EF),
                                                        shape: BoxShape.circle),
                                                    child: Center(
                                                      child: Icon(
                                                        Icons.remove,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 18,
                                            ),
                                            Container(
                                              child: Text(
                                                "Available balance",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                              child: Text(
                                                "5.279 ETH",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0XFFB4B4B4)),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 13,
                                            ),

                                            Row(
                                              children: [
                                                Container(
                                                  child: Switch(
                                                    value: isswitch,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        isswitch = value;
                                                        print(isswitch);
                                                      });
                                                    },
                                                    activeColor: Colors.grey,
                                                    activeTrackColor:
                                                        Color(0XFF4B56D2),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    "I agree to the terms and condition.",
                                                    style:
                                                        TextStyle(fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                      elevation: 15,
                                                      child: Container(
                                                        height: 300,
                                                        color:
                                                            Color(0XFFE7EBFD),
                                                        child: Column(
                                                          children: [Spacer(),
                                                            Container(
                                                              height: 90,
                                                              width: 90,
                                                              child: Icon(
                                                                Icons
                                                                    .account_balance_wallet_outlined,
                                                                color: Colors
                                                                    .black,
                                                                size: 40,
                                                              ),
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .orange,
                                                                  shape: BoxShape
                                                                      .circle),
                                                            ),
                                                            SizedBox(
                                                              height: 15,
                                                            ),
                                                            Spacer(),
                                                            Container(
                                                              child: Center(
                                                                child: Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  "You need to connect your \nwallet first to sign messages \nand send transaction to \nEthereum network",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  height: 40,
                                                                  width: 100,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0XFF2D52EF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              40)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "Connect wallet",
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              14),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(onTap: () {
                                                                  Navigator.pop(context);
                                                                },
                                                                  child: Container(
                                                                    height: 40,
                                                                    width: 100,
                                                                    decoration: BoxDecoration(
                                                                        color: Colors.white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                40)),
                                                                    child: Center(
                                                                      child: Text(
                                                                        "Cancel",
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color: Colors
                                                                                .black,
                                                                            fontSize:
                                                                                14),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Spacer(),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Container(
                                                height: 50,
                                                width: 130,
                                                child: Center(
                                                    child: Text(
                                                  "Place a Bid",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                      fontFamily: 'Poppins'),
                                                )),
                                                decoration: BoxDecoration(
                                                    color: Color(0XFF2D52EF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height: 70,
                                width: 150,
                                // color: Colors.orange,
                                child: Transform.scale(
                                  scaleX: 0.9,
                                  scaleY: 0.7,
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                      "Place a Bid",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    )),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0XFF2D52EF)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "amristo",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0XFF2D52EF)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 10, top: 17),
                          child: Text(
                            "Discription",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 7),
                          child: Text(
                            "A deatailed art featuring hand with colourful vibes represent the futuristic world.",
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Size & Formate",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 7),
                          child: Text(
                            "Art have the 1300*1000 and have all the necassary formats available like fig,ai etc.",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: th*0.1,
                          width: tw*0.8,
                          decoration: BoxDecoration(
                              color: Color(0XFFF4F4F4),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Current Bid",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            color: Colors.black),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        widget.eth[widget.index],
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0XFF2D52EF)),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        widget.price[widget.index],
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color(0XFFFFFFFF),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Ending in",
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Color(0XFF2D52EF)),
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
                                                  fontSize: 13,
                                                  fontFamily: 'Poppins'),
                                            ),
                                            VerticalDivider(
                                              color: Colors.grey,
                                              // width: 5,
                                              thickness: 1.5,
                                            ),
                                            Text(
                                              "08 Hours",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: 'Poppins'),
                                            ),
                                            VerticalDivider(
                                              color: Colors.grey,
                                              thickness: 1.5,
                                            ),
                                            Text(
                                              "56 Mins",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: 'Poppins'),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: .13,
            maxChildSize: .6,
            minChildSize: .13,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Color(0XFFD9D9D9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),

                //okay?
                child: ListView.builder(
                  itemCount: eth.length,
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      child: ListTile(
                        title: Text(
                          "${eth[index]}ETH",
                          style:
                              TextStyle(color: Color(0XFF2D52EF), fontSize: 15),
                        ),
                        subtitle: Text(time[index]),
                        trailing:
                            Image(image: AssetImage("images/${imgg[index]}")),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
