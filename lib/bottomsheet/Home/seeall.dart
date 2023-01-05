import 'package:fincherr/NFT/createnft.dart';
import 'package:fincherr/bottomsheet/Home/forsydetail.dart';
import 'package:flutter/material.dart';

class seeall extends StatefulWidget {
  const seeall({Key? key}) : super(key: key);

  @override
  State<seeall> createState() => _seeallState();
}

class _seeallState extends State<seeall> {
  List<String> immg = [
    "images/con1.png",
    "images/con2.png",
    "images/con3.png",
    "images/con4.png"
  ];
  List<String> namme = ["Forsy hand", " Scrockers", "Forsy hand", "Scrockers"];
  List<String> pricce = ["\$4572.2", "\$4673.4", "\$5678.5", "\$7896.6"];
  List<String> etth = ["1.16 ETH", "0.961 ETH", "1.25 ETH", "0.177 ETH"];

  // List clickpage=[fdetails(),];

  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: th * 0.17,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  height: th * 0.06,
                  width: tw * 0.128,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFDDDDDD),
                  ),
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.black,
                    size: th * 0.03,
                  ),
                ),
              ),
              Spacer(),
              Container(
                // margin: EdgeInsets.only(left: 63),
                child: Center(
                    child: Text(
                  "Details",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: th * 0.03,
                      letterSpacing: 1,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              ),
              // SizedBox(
              //   width: 85,
              // ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return createnft();
                    },
                  ));
                },
                child: Container(
                  height: th * 0.06,
                  width: tw * 0.128,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFDDDDDD),
                  ),
                  child: Icon(Icons.currency_rupee_outlined,
                      color: Color(0XFF2D52EF), size: th * 0.03),
                ),
              ),
              SizedBox(
                width: th * 0.02,
              ),
            ],
          ),
          SizedBox(
            height: th * 0.014,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Live Bidding",
                style: TextStyle(
                    fontSize: th * 0.035,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: th * 0.01,
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            child: GridView.builder(
              itemCount: immg.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: th * 0.23,
                      width: tw * 0.85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          color: Colors.orange,
                          image: DecorationImage(
                            image: AssetImage(immg[index]),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      height: th * 0.1,
                      width: tw * 0.85,
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
                                      fontSize: th * 0.022,
                                      color: Colors.black,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                              Container(
                                child: Text(etth[index],
                                    style: TextStyle(
                                        fontSize: th * 0.022,
                                        color: Color(0XFF2D52EF),
                                        fontFamily: 'Poppins')),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Text(
                                  pricce[index],
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: th * 0.018,
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
                                      fontSize: th * 0.026,
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
                                            fontSize: th * 0.017,
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
                                            fontSize: th * 0.017,
                                            fontFamily: 'Poppins'),
                                      ),
                                      VerticalDivider(
                                        color: Colors.grey,
                                        thickness: 1.5,
                                      ),
                                      Text(
                                        "56 Mins",
                                        style: TextStyle(
                                            fontSize: th * 0.017,
                                            fontFamily: 'Poppins'),
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
                  ],
                );
              },
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 290,
                  maxCrossAxisExtent: 300,
                  crossAxisSpacing: 300),
            ),
          ))
        ],
      ),
    );
  }
}
