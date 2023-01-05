import 'package:fincherr/bottomsheet/Home/home.dart';
import 'package:fincherr/login/first1.dart';
import 'package:fincherr/splashscreen/third.dart';
import 'package:flutter/material.dart';

class splashscound extends StatefulWidget {
  const splashscound({Key? key}) : super(key: key);

  @override
  State<splashscound> createState() => _splashscoundState();
}

class _splashscoundState extends State<splashscound> {
  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                // color: Colors.orange,
                child: Align(
                  alignment: FractionalOffset.topLeft,
                  child: Image(
                    image: AssetImage("images/splashsecound.png"),
                    height: th * 0.6,
                    width: th * 0.45,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return loginfirst();
                      },
                    ));
                  },
                  child: Container(
                      margin: EdgeInsets.only(bottom: 250),
                      child: Text(
                        'Skip',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: th*0.02,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w500,
                            height: 1),
                      )),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 15, bottom: 15),
              child: Text(
                'Buy and sell unique arts',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(8, 6, 35, 1),
                    fontFamily: 'Poppins',
                    fontSize: th*0.08,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1.2 /*PERCENT not supported*/
                    ),
              )),
          Container(
              margin: EdgeInsets.only(left: 15, top: 5),
              child: Text(
                'Fincher is best and most popular website for selling and your arts and collections in a very easy and hustle free  process.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(37, 37, 37, 1),
                    fontFamily: 'Poppins',
                    fontSize: th*0.023,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Spacer(),
          Container(
            height: 65,
            width: double.infinity,
            color: Colors.blue,
            child: Row(
              children: [
                Container(
                  // color: Colors.orange,
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: th * 0.008,
                              height: th * 0.008,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Color.fromRGBO(255, 255, 255, 1),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              width: tw * 0.05,
                              height: th * 0.008,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Color.fromRGBO(255, 255, 255, 1),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              width: th * 0.008,
                              height: th * 0.008,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ))
                        ],
                      ),
                      SizedBox(
                        width: tw * 0.5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return splashthird();
                            },
                          ));
                        },
                        child: Row(
                          children: [
                            Container(
                              // margin: EdgeInsets.only(left: 150),
                              child: Text(
                                'Next',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: th * 0.023,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            // color: Colors.orange,
                            margin: EdgeInsets.only(top: 5, left: 13),
                            width: tw * 0.15,
                            child:
                                Image(image: AssetImage("images/Arrow 1.png"))),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
