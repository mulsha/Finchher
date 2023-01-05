import 'package:fincherr/bottomsheet/profile/editprofile.dart';
import 'package:fincherr/bottomsheet/profile/help.dart';
import 'package:fincherr/forgetpass/firstpass.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
                height: th * 0.15,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) {
                  //     return home();
                  //   },
                  // ));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  height: th * 0.1,
                  width: tw * 0.1,
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
              SizedBox(
                width: tw * 0.3,
              ),
              Container(
                // color: Colors.orange,
                // margin: EdgeInsets.only(left: 63),
                child: Center(
                    child: Text(
                  "Profile",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 21,
                      letterSpacing: 1,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              )
            ],
          ),
          Container(
            height: th * 0.14,
            width: th * 0.14,
            decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          ),
          SizedBox(
            height: th * 0.03,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              // color: Colors.red,
              child: Text(
                "Karl Edison",
                style:
                    TextStyle(fontSize: th * 0.03, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              // color: Colors.red,
              child: Text(
                "@karledison",
                style: TextStyle(
                  fontSize: th * 0.02,
                ),
              ),
            ),
          ),
          SizedBox(
            height: th * 0.045,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return editprofile();
                },
              ));
            },
            child: Container(
              height: th * 0.09,
              width: tw * 0.87,
              decoration: BoxDecoration(
                  color: Color(0XFFF4F4F4),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Edit profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Icon(Icons.arrow_forward_outlined),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: th * 0.03,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return firstpass();
                },
              ));
            },
            child: Container(
              height: th * 0.09,
              width: tw * 0.87,
              decoration: BoxDecoration(
                  color: Color(0XFFF4F4F4),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Change Password",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Icon(Icons.arrow_forward_outlined),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: th * 0.03,
          ),
          Container(
            height: th * 0.09,
            width: tw * 0.87,
            decoration: BoxDecoration(
                color: Color(0XFFF4F4F4),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Favourites",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Icon(Icons.arrow_forward_outlined),
                )
              ],
            ),
          ),
          SizedBox(
            height: th * 0.03,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return help();
                },
              ));
            },
            child: Container(
              height: th * 0.09,
              width: tw * 0.87,
              decoration: BoxDecoration(
                  color: Color(0XFFF4F4F4),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Help",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Icon(Icons.arrow_forward_outlined),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: th * 0.03,
          ),
          Container(
            height: th * 0.04,
            width: tw * 0.3,
            decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Icon(
                  Icons.logout_outlined,
                  size: 27,
                  color: Color(0XFF2D52EF),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Center(
                    child: Text(
                      "Log out",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF2D52EF)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
