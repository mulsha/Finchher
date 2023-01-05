import 'package:fincherr/bottomsheet/Home/home.dart';
import 'package:flutter/material.dart';

class pricenft extends StatefulWidget {
  const pricenft({Key? key}) : super(key: key);

  @override
  State<pricenft> createState() => _pricenftState();
}

class _pricenftState extends State<pricenft> {
  int action = 0;
  String activity = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      action = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 120,
              ),
              InkWell(
                onTap: () {},
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
                margin: EdgeInsets.only(left: 52),
                child: Center(
                    child: Text(
                  "Create an NFT",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      letterSpacing: 1,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    action = 0;
                  });
                },
                child: Container(
                  height: 45,
                  width: 130,
                  child: Center(
                    child: Text(
                      "Fixed price",
                      style: TextStyle(
                          color: action == 0 ? Colors.white : Color(0XFF2D52EF),
                          fontSize: 15,
                          fontFamily: 'Inter'),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: action == 0 ? Color(0XFF2D52EF) : Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color:
                              action == 0 ? Colors.white : Color(0XFF2D52EF))),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    action = 1;
                  });
                },
                child: Container(
                  height: 45,
                  width: 130,
                  child: Center(
                    child: Text(
                      "Auction",
                      style: TextStyle(
                          color: action == 0 ? Color(0XFF2D52EF) : Colors.white,
                          fontFamily: 'Inter'),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: action == 0 ? Colors.white : Color(0XFF2D52EF),
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color:
                              action == 0 ? Color(0XFF2D52EF) : Colors.white)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          action == 0
              ? Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Pricing",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xffb3b3b3),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 280,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xfff4f4f4),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              // errorText: emaill?"Enter Email":null,
                              hintText: 'Price',
                              hintStyle: TextStyle(
                                color: Color(0xffb3b3b3),
                                fontSize: 16,
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Service fee 2.5% ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xffb3b3b3),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 287,
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xff2c52ef),
                        ),
                        child: Center(
                          child: Text(
                            "Mint NFT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Minimumu Bid",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xffb3b3b3),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 280,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xfff4f4f4),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              // errorText: emaill?"Enter Email":null,
                              hintText: 'Minimumu Bid',
                              hintStyle: TextStyle(
                                color: Color(0xffb3b3b3),
                                fontSize: 16,
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Service fee 2.5% ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xffb3b3b3),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Starting date",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xffb3b3b3),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 280,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xfff4f4f4),
                        ),
                        // child: DropDownFormField(
                        //   hintText: 'Starting date',
                        //     value: activity,
                        //     onChanged: (value){
                        //
                        //     setState(() {
                        //       activity=value;
                        //     });
                        //     },
                        //   dataSource: [
                        //     {
                        //       "display": "After listing",
                        //       "value": "After listing",
                        //     },
                        //     {
                        //       "display": "Before listing",
                        //       "value": "Before listing",
                        //     },
                        //     {
                        //       "display": "Other",
                        //       "value": "Other",
                        //     },
                        //   ],
                        //   textField: 'display',
                        //   valueField: 'value',
                        // )
                        // TextFormField(
                        //   decoration: InputDecoration(
                        //     border: OutlineInputBorder(),
                        //     // errorText: emaill?"Enter Email":null,
                        //     hintText: 'Starting date',
                        //     hintStyle: TextStyle(
                        //       color: Color(0xffb3b3b3),
                        //       fontSize: 16,
                        //     ),
                        //   ),
                        // )
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Starting date",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xffb3b3b3),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 280,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xfff4f4f4),
                        ),
                        // child: DropDownFormField(
                        //   hintText: 'Starting date',
                        //     value: activity,
                        //     onChanged: (value){
                        //
                        //     setState(() {
                        //       activity=value;
                        //     });
                        //     },
                        //   dataSource: [
                        //     {
                        //       "display": "After listing",
                        //       "value": "After listing",
                        //     },
                        //     {
                        //       "display": "Before listing",
                        //       "value": "Before listing",
                        //     },
                        //     {
                        //       "display": "Other",
                        //       "value": "Other",
                        //     },
                        //   ],
                        //   textField: 'display',
                        //   valueField: 'value',
                        // )
                        // TextFormField(
                        //   decoration: InputDecoration(
                        //     border: OutlineInputBorder(),
                        //     // errorText: emaill?"Enter Email":null,
                        //     hintText: 'Starting date',
                        //     hintStyle: TextStyle(
                        //       color: Color(0xffb3b3b3),
                        //       fontSize: 16,
                        //     ),
                        //   ),
                        // )
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                elevation: 10,
                                child: Container(
                                  height: 300,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Spacer(),
                                      Container(
                                        height: 55,
                                        width: 55,
                                        child: Icon(
                                          Icons.done,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0XFF2D52EF)),
                                      ),
                                      Spacer(),
                                      Container(
                                        child: Text(
                                          "Congratulations",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        child: Text(
                                          "🙂",
                                          style: TextStyle(fontSize: 35),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          "Your NFT has been successfully \nlisted in the marketplace.",
                                          style: TextStyle(),
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Dialog(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: Container(
                                                  height: 260,
                                                  // width: 200,
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 180,
                                                        width: 290,
                                                        decoration:
                                                            BoxDecoration(
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            15),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15)),
                                                                color: Colors
                                                                    .orange,
                                                                image:
                                                                    DecorationImage(
                                                                  image: AssetImage(
                                                                      "images/preview.png"),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                )),
                                                      ),
                                                      Container(
                                                        height: 80,
                                                        width: 290,
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0XFFE7EBFD),
                                                            borderRadius: BorderRadius.only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        15),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        15))),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 2),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Container(
                                                                    child: Text(
                                                                      "Illusion X",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          color: Colors
                                                                              .black,
                                                                          fontFamily:
                                                                              'Poppins'),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    margin: EdgeInsets
                                                                        .only(
                                                                            left:
                                                                                25),
                                                                    child: Text(
                                                                        "0.279 1 ETH",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15,
                                                                            color:
                                                                                Color(0XFF2D52EF),
                                                                            fontFamily: 'Poppins')),
                                                                  ),
                                                                  Container(
                                                                    margin: EdgeInsets.only(
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                      "\$4517.2",
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              12,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(onTap: () {
                                                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                                return home();
                                                              },));
                                                            },
                                                              child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 25,
                                                                        top: 30),
                                                                height: 40,
                                                                width: 100,
                                                                child: Center(
                                                                  child: Text(
                                                                    "Place a bid",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                40),
                                                                    color: Color(
                                                                        0XFF2D52EF)),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 120,
                                          child: Center(
                                              child: Text(
                                            "Preview",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: 'Inter'),
                                          )),
                                          decoration: BoxDecoration(
                                              color: Color(0XFF2D52EF),
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                        ),
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
                          width: 287,
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xff2c52ef),
                          ),
                          child: Center(
                            child: Text(
                              "Mint NFT",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
