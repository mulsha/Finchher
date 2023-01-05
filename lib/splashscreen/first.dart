import 'package:fincherr/bottomsheet/Home/home.dart';
import 'package:fincherr/login/first1.dart';
import 'package:fincherr/splashscreen/secound.dart';
import 'package:flutter/material.dart';

class splashfirst extends StatefulWidget {
  const splashfirst({Key? key}) : super(key: key);

  @override
  State<splashfirst> createState() => _splashfirstState();
}

class _splashfirstState extends State<splashfirst> {
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
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return loginfirst();
                  },
                ));
              },
              child: Container(
                  margin: EdgeInsets.only(right: 15, bottom: 20),
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
          Container(
            margin: EdgeInsets.only(left: 17, bottom: 15),
            child: Text(
              'Unlock the future',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(8, 6, 35, 1),
                  fontFamily: 'Poppins',
                  fontSize: th*0.07,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1.2 /*PERCENT not supported*/
                  ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15, top: 5),
              child: Text(
                'Fincher is a over expanding network of many interlinked applications and services for building an ecosystem of decenteralized future.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(37, 37, 37, 1),
                    fontFamily: 'Poppins',
                    fontSize: th*0.02,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: th * 0.6,
              width: th * 0.5,
              // color: Colors.green,
              child: Image(
                image: AssetImage("images/splashfirst.png"),
                fit: BoxFit.fitWidth,
                // color: Colors.orange,
              ),
            ),
          ),
          Container(
            height: th*0.09,
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
                      SizedBox(width: tw*0.35,),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return splashscound();
                            },
                          ));
                        },
                        child: Row(
                          children: [
                            Container(
                              // margin: EdgeInsets.only(left: 100),
                              child: Text(
                                'Explore more',
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
                            width: tw*0.15,
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
