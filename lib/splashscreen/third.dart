import 'package:fincherr/bottomsheet/Home/home.dart';
import 'package:fincherr/login/first1.dart';
import 'package:flutter/material.dart';

class splashthird extends StatefulWidget {
  const splashthird({Key? key}) : super(key: key);

  @override
  State<splashthird> createState() => _splashthirdState();
}

class _splashthirdState extends State<splashthird> {
  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return loginfirst();
              },));
            },
              child: Container(
                  margin: EdgeInsets.only(right: 15, bottom: 5),
                  child: Text(
                    'Skip',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize:  th*0.02,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15, bottom: 10),
              child: Text(
                'The most trusted way',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(8, 6, 35, 1),
                    fontFamily: 'Poppins',
                    fontSize: th*0.08,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
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
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Container(
              // height: 400,
              // color: Colors.orange,
              child: Image(
                image: AssetImage("images/splashthird.png"),
                height: th * 0.6,
                width: th * 0.45,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
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
                        ],
                      ),
                      SizedBox(width: tw*0.13,),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return loginfirst();
                            },
                          ));
                        },
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 110),
                              child: Text(
                                'Get Started',
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
