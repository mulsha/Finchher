import 'package:fincherr/bottomsheet/Home/home.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool passvisibile = false;
  bool isswitch = false;
  bool touch=false;

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
    return Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Container(
          // height: double.maxFinite,
          // width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: th*0.1,
              ),
              Image(
                image: AssetImage("images/logo.png"),
                height: 50,
                width: 50,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome back to \nfincher",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
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
                  child: TextFormField(onTap: () {
                    setState(() {
                      touch=true;
                    });
                  },
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
                        fontSize: 16,
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xffb3b3b3),
                        size: 18,
                      ),
                    ),
                  )),
              SizedBox(
                height: 10,
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
                child: TextFormField(onTap: () {
                  setState(() {
                    touch=true;
                  });
                },
                  obscureText: passvisibile,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'password',
                      hintStyle: TextStyle(
                        color: Color(0xffb3b3b3),
                        fontSize: 16,
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xffb3b3b3),
                        size: 16,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passvisibile = !passvisibile;
                            });
                          },
                          icon: Icon(passvisibile
                              ? Icons.visibility
                              : Icons.visibility_off))),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "forgot password?",
                    style: TextStyle(
                      color: Color(0xff080623),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
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
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "I agree to the terms and conditions",
                        style: TextStyle(
                          color: Color(0xff252525),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 36,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return home();
                    },
                  ));
                },
                child: Container(
                  width: 287,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: touch ? Color(0xff2c52ef) : Color(0xffe6eafc),
                  ),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: touch ? Colors.white : Color(0xff080623),
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                "Don’t have an account? Sign up",
                style: TextStyle(
                  color: Color(0xff080623),
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                width: 287,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xffe6eafc),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("images/google icon.png")),
                    SizedBox(
                      width: 13,
                    ),
                    Center(
                      child: Text(
                        "Sign in with Google",
                        style: TextStyle(
                          color: Color(0xff080623),
                          fontSize: 16,
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
      ),
    );
  }
}
