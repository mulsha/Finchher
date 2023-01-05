import 'package:fincherr/bottomsheet/bottompage.dart';
import 'package:fincherr/bottomsheet/Home/home.dart';
import 'package:fincherr/forgetpass/firstpass.dart';
import 'package:fincherr/login/signup.dart';
import 'package:flutter/material.dart';

class loginfirst extends StatefulWidget {
  const loginfirst({Key? key}) : super(key: key);

  @override
  State<loginfirst> createState() => _loginfirstState();
}

class _loginfirstState extends State<loginfirst> {
  bool touch = false;
  bool passvisibile = false;
  bool isswitch = false;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool emaill = false;
  bool password = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passvisibile = false;
  }
  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        // height: double.maxFinite,
        // width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: th*0.09,
            ),
            Image(
              image: AssetImage("images/logo.png"),
              height: th*0.07,
              width: th*0.07,
            ),
            SizedBox(
              height: th*0.04,
            ),
            Text(
              "Welcome back to \nfincher",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: th*0.04,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: th*0.02,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Email address",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xffb3b3b3),
                    fontSize: th*0.02,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: th*0.013,
            ),
            Container(
                width: tw*0.85,
                height: th*0.077,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xfff4f4f4),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                            .hasMatch(value)) {
                      return "Enter correct email";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // errorText: emaill?"Enter Email":null,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Color(0xffb3b3b3),
                      fontSize: th*0.02,
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color(0xffb3b3b3),
                      size: th*0.03,
                    ),
                  ),
                )),
            SizedBox(
              height: th*0.03,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xffb3b3b3),
                    fontSize: th*0.02,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: th*0.012,
            ),
            Container(
              width: tw*0.85,
              height: th*0.077,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff4f4f4),
              ),
              child: TextFormField(
                obscureText: passvisibile,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'password',
                    hintStyle: TextStyle(
                      color: Color(0xffb3b3b3),
                      fontSize: th*0.02,
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      color: Color(0xffb3b3b3),
                      size: th*0.03,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passvisibile = !passvisibile;
                          });
                        },
                        icon: Icon(passvisibile
                            ? Icons.visibility
                            : Icons.visibility_off,size: th*0.03,))),
              ),
            ),
            SizedBox(
              height: th*0.02,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return firstpass();
                    },
                  ));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "forgot password?",
                    style: TextStyle(
                      color: Color(0xff080623),
                      fontSize: th*0.018,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: th*0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: tw*0.03,
                ),
                Container(
                  child: Switch(
                    value: isswitch,
                    onChanged: (value) {
                      setState(() {
                        isswitch = value;
                        print(isswitch);
                      });
                    },
                    activeColor: Colors.grey,
                    activeTrackColor: Color(0XFF4B56D2),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text(
                      "Remember me next time",
                      style: TextStyle(
                        color: Color(0xff252525),
                        fontSize: th*0.017,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: th*0.04,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (email.text.isEmpty) {
                    emaill = true;
                  } else if (pass.text.isEmpty) {
                    password = true;
                  } else {
                    emaill = false;
                    password = false;
                  }
                });
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return bottompage();
                  },
                ));
              },
              child: Container(
                width: tw*0.75,
                height: th*0.09,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xff2c52ef),
                ),
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: th*0.03,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: th*0.03,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return signup();
                  },
                ));
              },
              child: Text(
                "Don’t have an account? Sign up",
                style: TextStyle(
                  color: Color(0xff080623),
                  fontSize: th*0.02,
                ),
              ),
            ),
            SizedBox(
              height: th*0.03,
            ),
            Container(
              width: tw*0.75,
              height: th*0.09,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xffe6eafc),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("images/google icon.png")),
                  SizedBox(
                    width: tw*0.03,
                  ),
                  Center(
                    child: Text(
                      "Sign in with Google",
                      style: TextStyle(
                        color: Color(0xff080623),
                        fontSize: th*0.026,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),);
  }
}
