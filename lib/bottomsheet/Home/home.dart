import 'package:fincherr/bottomsheet/Home/forsydetail.dart';
import 'package:fincherr/bottomsheet/Home/seeall.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<String> img = [
    "images/con1.png",
    "images/con2.png",
    "images/con3.png",
    "images/con4.png"
  ];
  List<String> name = ["Forsy hand", " Scrockers", "Forsy hand", "Scrockers"];
  List<String> price = ["\$4572.2", "\$4673.4", "\$5678.5", "\$7896.6"];
  List<String> eth = ["1.16 ETH", "0.961 ETH", "1.25 ETH", "0.177 ETH"];

  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: th * 0.15,
                ),
                Text(
                  "Fincher",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: th * 0.03,
                      color: Colors.black),
                ),
                // SizedBox(width: 70,),
                Spacer(),
                Container(
                  height: th * 0.06,
                  width: tw * 0.128,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFDDDDDD),
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Color(0XFF2D52EF),
                    size: th * 0.03,
                  ),
                ),
                SizedBox(
                  width: tw * 0.02,
                ),
                Container(
                  height: th * 0.06,
                  width: tw * 0.29,
                  decoration: BoxDecoration(
                      color: Color(0XFFDDDDDD),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.wallet,
                        color: Color(0XFF2D52EF),
                      ),
                      Text(
                        "6.921",
                        style:
                            TextStyle(fontSize: th * 0.02, color: Colors.black),
                      ),
                      Text(
                        "ETH",
                        style: TextStyle(
                            fontSize: th * 0.02, color: Color(0XFF2D52EF)),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Explore the most\npopular artist and\nNFT items ",
                  style: TextStyle(
                      fontSize: th * 0.028,
                      fontFamily: 'Poppins',
                      height: 1.2,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  height: th * 0.06,
                  width: tw * 0.128,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFDDDDDD),
                  ),
                  child: Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                    size: th * 0.03,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: th * 0.013,
            ),
            Text(
              "36.8M items are just waiting for you. Now you can create, sell and buy NFT’s.",
              style: TextStyle(fontSize: th * 0.017, fontFamily: 'Poppins'),
            ),
            SizedBox(
              height: th * 0.013,
            ),
            Container(
              height: th * 0.123,
              width: tw * 0.88,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFFF4F4F4)),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        "Treading creation",
                        style: TextStyle(
                            fontSize: th * 0.025,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: th * 0.014,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: th * 0.06,
                        width: tw * 0.1,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0XFFFFFFFF), width: 2),
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/e1.png",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: th * 0.06,
                        width: tw * 0.1,
                        decoration: BoxDecoration(
                            // color: Colors.orange,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0XFFFFFFFF), width: 2),
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/e2.png",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: th * 0.06,
                        width: tw * 0.1,
                        decoration: BoxDecoration(
                            // color: Colors.orange,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0XFFFFFFFF), width: 2),
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/e3.png",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: th * 0.06,
                        width: tw * 0.1,
                        decoration: BoxDecoration(
                            // color: Colors.orange,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0XFFFFFFFF), width: 2),
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/e4.png",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: th * 0.06,
                        width: tw * 0.1,
                        decoration: BoxDecoration(
                            // color: Colors.orange,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0XFFFFFFFF), width: 2),
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/e5.png",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: th * 0.06,
                        width: tw * 0.1,
                        child: Center(
                          child: Text(
                            "+134",
                            style: TextStyle(
                                fontSize: th * 0.018,
                                fontFamily: 'Inter',
                                color: Colors.black),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0XFFFFFFFF), width: 2),
                          color: Color(0XFFF4F4F4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: th*0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Live auctions",
                      style: TextStyle(
                          fontSize: th*0.027,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return seeall();
                      },
                    ));
                  },
                  child: Container(
                    // color: Colors.orange,
                    child: Column(
                      children: [
                        Icon(
                          Icons.call_made_outlined,
                          color: Color(0XFF2D52EF),
                          size: th*0.028,
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            fontSize: th*0.023,
                            color: Color(0XFF2D52EF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 15),
            Expanded(
              child: Container(
                width: double.infinity,
                // color: Colors.orange,
                child: GridView.builder(
                  itemCount: img.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: tw * 0.5, mainAxisExtent: th * 0.35),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return fdetails(img, price, name, eth, index);
                          },
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(image: AssetImage(img[index])),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                name[index],
                                style: TextStyle(
                                    fontSize: th*0.02,
                                    fontFamily: 'Poppins',
                                    color: Colors.black),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                eth[index],
                                style: TextStyle(
                                    fontSize: th*0.018,
                                    fontFamily: 'Poppins',
                                    color: Color(0XFF2D52EF)),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                price[index],
                                style: TextStyle(
                                    fontSize: th*0.018,
                                    fontFamily: 'Poppins',
                                    color: Colors.black),
                              ),
                            ),
                          ],
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
    );
  }
}
