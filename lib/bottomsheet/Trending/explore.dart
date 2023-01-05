import 'package:flutter/material.dart';

class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  List<String> img = [
    "images/tre1.png",
    "images/tre2.png",
    "images/tre3.png",
    "images/tre4.png",
    "images/tre5.png",
    "images/tre6.png",
    "images/tre7.png",
    "images/tre8.png",
  ];
  List<String> name = [
    "Rollins",
    "Spellera",
    "Spectrula",
    "Derserto",
    "Rollins",
    "Spellera",
    "Spectrula",
    "Derserto"
  ];
  List<String> price = [
    "\$4272.2",
    "\$5691.2",
    "\$2172.2",
    "\$15172.2",
    "\$4272.2",
    "\$5691.2",
    "\$2172.2",
    "\$15172.2"
  ];
  List<String> eth = [
    "1.161 ETH",
    "1.461 ETH",
    "0.961 ETH",
    "0.761 ETH",
    "1.161 ETH",
    "1.461 ETH",
    "0.961 ETH",
    "0.761 ETH"
  ];
  double valuee = 4;

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
                      "Explore  ",
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 280,
                          decoration: BoxDecoration(
                              color: Color(0XFFE7EBFD),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Price range",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 80,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Color(0XFFF4F4F4),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(right: 13, top: 3),
                                        child: Text(
                                          "ETH",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: StatefulBuilder(
                                        builder: (context, setState1) {
                                          return Slider(
                                            min: 0,
                                            max: 10,
                                            value: valuee,
                                            divisions: 30,
                                            activeColor: Color(0XFF2D52EF),
                                            label: valuee.round().toString(),
                                            inactiveColor: Colors.orange,
                                            onChanged: (value) {
                                              setState1(() {
                                                setState(() {
                                                  valuee = value;
                                                });
                                              });
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            right: 10, bottom: 2),
                                        child: Text(
                                          "10 ETH",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Category",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 165,
                                    child: Center(
                                      child: Text(
                                        "Art",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        color: Color(0XFF2D52EF),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 165,
                                    child: Center(
                                      child: Text(
                                        "Videos",
                                        style: TextStyle(
                                            color: Color(0XFF2D52EF),
                                            fontSize: 15),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0XFF2D52EF)),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0XFFF4F4F4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.filter_list,
                          color: Color(0XFF2D52EF),
                          size: 18,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Filter",
                          style: TextStyle(
                            fontSize: 13,
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
                      maxCrossAxisExtent: tw*0.5, mainAxisExtent: th * 0.35),
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
