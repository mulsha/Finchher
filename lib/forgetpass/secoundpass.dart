import 'package:fincherr/forgetpass/newpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class secoundpass extends StatefulWidget {
  const secoundpass({Key? key}) : super(key: key);

  @override
  State<secoundpass> createState() => _secoundpassState();
}

class _secoundpassState extends State<secoundpass> {
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
            Center(
                child: Text(
              "We have sent a code",
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
              height: 20,
            ),
            Container(
              width: 280,
              // color: Colors.orange,
              child: Center(
                child: Text(
                  "Please enter a 4 digit code we send at your emali.com",
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
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 45,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xfff4f4f4),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    // obscureText: passvisibile,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // hintText: 'password',
                      hintStyle: TextStyle(
                        color: Color(0xffb3b3b3),
                        fontSize: 20,
                      ),
                      // prefixIcon: Icon(
                      //   Icons.lock_outline_rounded,
                      //   color: Color(0xffb3b3b3),
                      //   size: 16,
                      // ),
                      // suffixIcon: IconButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         passvisibile = !passvisibile;
                      //       });
                      //     },
                      //     icon: Icon(passvisibile
                      //         ? Icons.visibility
                      //         : Icons.visibility_off))
                    ),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  width: 45,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xfff4f4f4),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    // obscureText: passvisibile,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // hintText: 'password',
                      hintStyle: TextStyle(
                        color: Color(0xffb3b3b3),
                        fontSize: 20,
                      ),
                      // prefixIcon: Icon(
                      //   Icons.lock_outline_rounded,
                      //   color: Color(0xffb3b3b3),
                      //   size: 16,
                      // ),
                      // suffixIcon: IconButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         passvisibile = !passvisibile;
                      //       });
                      //     },
                      //     icon: Icon(passvisibile
                      //         ? Icons.visibility
                      //         : Icons.visibility_off))
                    ),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  width: 45,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xfff4f4f4),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    // obscureText: passvisibile,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // hintText: 'password',
                      hintStyle: TextStyle(
                        color: Color(0xffb3b3b3),
                        fontSize: 20,
                      ),
                      // prefixIcon: Icon(
                      //   Icons.lock_outline_rounded,
                      //   color: Color(0xffb3b3b3),
                      //   size: 16,
                      // ),
                      // suffixIcon: IconButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         passvisibile = !passvisibile;
                      //       });
                      //     },
                      //     icon: Icon(passvisibile
                      //         ? Icons.visibility
                      //         : Icons.visibility_off))
                    ),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  width: 45,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xfff4f4f4),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    // obscureText: passvisibile,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // hintText: 'password',
                      hintStyle: TextStyle(
                        color: Color(0xffb3b3b3),
                        fontSize: 20,
                      ),
                      // prefixIcon: Icon(
                      //   Icons.lock_outline_rounded,
                      //   color: Color(0xffb3b3b3),
                      //   size: 16,
                      // ),
                      // suffixIcon: IconButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         passvisibile = !passvisibile;
                      //       });
                      //     },
                      //     icon: Icon(passvisibile
                      //         ? Icons.visibility
                      //         : Icons.visibility_off))
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 280,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return newpass();
                  },
                ));
              },
              child: Container(
                width: 287,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xff2c52ef),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Verify code",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
