import 'package:fincherr/bottomsheet/Trending/explore.dart';
import 'package:flutter/material.dart';

class trending extends StatefulWidget {
  const trending({Key? key}) : super(key: key);

  @override
  State<trending> createState() => _trendingState();
}

class _trendingState extends State<trending> {
  List<String> img = [
    "images/tre1.png",
    "images/tre2.png",
    "images/tre3.png",
    "images/tre4.png"
  ];
  List<String> name = ["Rollins", "Spellera", "Spectrula", "Derserto"];
  List<String> price = ["\$4272.2", "\$5691.2", "\$2172.2", "\$15172.2"];
  List<String> eth = ["1.161 ETH", "1.461 ETH", "0.961 ETH", "0.761 ETH"];
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
                      "Trending Bids 🔥  ",
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return explore();
                      },
                    ));
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
            // SizedBox(height: 15),
            Expanded(
              child: Container(
                width: double.infinity,
                // color: Colors.orange,
                child: GridView.builder(
                  itemCount: img.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: tw*0.5, mainAxisExtent: th*0.35),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return fdetails(img, price, name, eth, index);
                        //   },
                        // ));
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
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    color: Colors.black),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                eth[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    color: Color(0XFF2D52EF)),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                price[index],
                                style: TextStyle(
                                    fontSize: 13,
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
