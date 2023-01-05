import 'package:fincherr/bottomsheet/topartis/viewtopartis.dart';
import 'package:flutter/material.dart';

class tophome extends StatefulWidget {
  const tophome({Key? key}) : super(key: key);

  @override
  State<tophome> createState() => _tophomeState();
}

class _tophomeState extends State<tophome> {
  List<String> backimg = [
    "images/ta1.png",
    "images/ta2.png",
    "images/ta3.png",
    "images/ta4.png",
  ];
  List<String> proimg = [
    "images/a1.png",
    "images/a2.png",
    "images/a3.png",
    "images/a4.png",
  ];

  List<String> name = ["Andrian", "Sperons", "Fatima", "Sperons"];
  List<String> ids = [
    "@ideasbyandrian",
    "@speronsiq",
    "@Visualbyfat",
    "@speronsiq"
  ];
  List<String> follower=["123","103","198","88"];
  List<String> following=["23","8","7","23"];

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
                  height: 120,
                ),
                Text(
                  "Fincher",
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 16, color: Colors.black),
                ),
                // SizedBox(width: 70,),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFDDDDDD),
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Color(0XFF2D52EF),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 110,
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
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Text(
                        "ETH",
                        style:
                            TextStyle(fontSize: 14, color: Color(0XFF2D52EF)),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Top Artist 🔥  ",
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return explore();
                    //   },
                    // ));
                  },
                  child: Container(
                    // color: Colors.orange,
                    child: Column(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0XFF2D52EF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                // color: Colors.orange,
                child: ListView.builder(
                  itemCount: backimg.length,
                  // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  //   maxCrossAxisExtent: th * 0.9,
                  //   mainAxisExtent: th * 0.2,
                  // ),
                  itemBuilder: (context, index) {
                    return InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return viewtopartis(backimg,following,follower,ids,name,proimg,index);
                      },));
                    },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                            // color: Color(0XFFEAEAEA),
                            // color: Colors.orange,
                            borderRadius: BorderRadius.circular(15)
                            // border: Border.all(color: Colors.red, width: 2),
                            ),
                        padding: EdgeInsets.all(7),
                        child: Column(
                          children: [
                            //okay done
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.centerLeft,
                              children: [
                                Container(
                                  height: 60,
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: Image(image: AssetImage(backimg[index])),
                                ),
                                Positioned(
                                  bottom: 5,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Image(
                                      image: AssetImage(proimg[index]),
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Column(
                                        children: [
                                          Text(name[index]),
                                          Text(
                                            ids[index],
                                            style: TextStyle(fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            "${follower[index]} Follower | ${following[index]} Following",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Container(margin: EdgeInsets.only(left: 25),
                                            child: Row(

                                              // mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(Icons.facebook),
                                                // Icon(Icons.bird),
                                                Image(
                                                  image: AssetImage(
                                                      "images/twitter.png"),
                                                  height: 23,
                                                  width: 23,
                                                ),
                                                Icon(Icons.link),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                    //   InkWell(
                    //   onTap: () {
                    //     // Navigator.push(context, MaterialPageRoute(
                    //     //   builder: (context) {
                    //     //     return fdetails(img, price, name, eth, index);
                    //     //   },
                    //     // ));
                    //   },
                    //   child: Container(
                    //     margin: EdgeInsets.all(10),
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Container(
                    //             child:
                    //                 Image(image: AssetImage(backimg[index]))),
                    //         CircleAvatar(backgroundImage: AssetImage(proimg[index]),),
                    //         Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             name[index],
                    //             style: TextStyle(
                    //                 fontSize: 15,
                    //                 fontFamily: 'Poppins',
                    //                 color: Colors.black),
                    //           ),
                    //         ),
                    //         Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             ids[index],
                    //             style: TextStyle(
                    //                 fontSize: 14,
                    //                 fontFamily: 'Poppins',
                    //                 color: Color(0XFF2D52EF)),
                    //           ),
                    //         ),
                    //         Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             name[index],
                    //             style: TextStyle(
                    //                 fontSize: 13,
                    //                 fontFamily: 'Poppins',
                    //                 color: Colors.black),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // );
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
