import 'package:fincherr/login/first1.dart';
import 'package:flutter/material.dart';

class newpass extends StatefulWidget {
  const newpass({Key? key}) : super(key: key);

  @override
  State<newpass> createState() => _newpassState();
}

class _newpassState extends State<newpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 22,
                ),
                Container(
                  height: 46,
                  width: 46,
                  child: Image(
                    image: AssetImage("images/arrow_back.png"),
                    height: 15,
                    width: 15,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFe7ebfd),
                  ),
                ),
                SizedBox(
                  width: 62,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
                child: Text(
              "Add a new pasword",
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Poppins',
                  fontSize: 23,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            )),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 280,
              // color: Colors.orange,
              child: Center(
                child: Text(
                  "Please add a secure password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(37, 37, 37, 1),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                      ),
                ),
              ),
            ),
            SizedBox(height: 56),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Password",
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
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.lock_outline_rounded,
                    color: Color(0xffb3b3b3),
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xffb3b3b3),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 145,
                  ),
                  Image(
                    image: AssetImage("images/Orix-ey-close.png"),
                    width: 16,
                    height: 16,
                  )
                ],
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
                  "Confirm password",
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
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.lock_outline_rounded,
                    color: Color(0xffb3b3b3),
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xffb3b3b3),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 145,
                  ),
                  Image(
                    image: AssetImage("images/Orix-ey-close.png"),
                    width: 16,
                    height: 16,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 140,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return loginfirst();
                  },
                ));
              },
              child: Container(
                width: 287,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0XFFe7ebfd),
                ),
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.black,
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
      ),
    );
  }
}
