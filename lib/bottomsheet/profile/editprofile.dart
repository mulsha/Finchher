import 'package:flutter/material.dart';

class editprofile extends StatefulWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
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
          SizedBox(
            height: th * 0.02,
          ),
          Container(
            height: th * 0.16,
            width: th * 0.16,
            child: Icon(
              Icons.add_a_photo_outlined,
              size: 30,
            ),
            decoration: BoxDecoration(
                color: Color(0XFF822D52EF),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black)),
          ),
          SizedBox(
            height: th * 0.07,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Name",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xffb3b3b3),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            height: th * 0.013,
          ),
          Container(
              width: tw * 0.85,
              height: th * 0.076,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff4f4f4),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // errorText: emaill?"Enter Email":null,
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    color: Color(0xffb3b3b3),
                    fontSize: 16,
                  ),
                  // prefixIcon: Icon(
                  //   Icons.email_outlined,
                  //   color: Color(0xffb3b3b3),
                  //   size: 18,
                  // ),
                ),
              )),
          SizedBox(
            height: th * 0.04,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Email",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xffb3b3b3),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            height: th * 0.013,
          ),
          Container(
              width: tw * 0.85,
              height: th * 0.076,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff4f4f4),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // errorText: emaill?"Enter Email":null,
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Color(0xffb3b3b3),
                    fontSize: 16,
                  ),
                  // prefixIcon: Icon(
                  //   Icons.email_outlined,
                  //   color: Color(0xffb3b3b3),
                  //   size: 18,
                  // ),
                ),
              )),
          SizedBox(
            height: th * 0.04,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Username",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xffb3b3b3),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            height: th * 0.013,
          ),
          Container(
              width: tw * 0.85,
              height: th * 0.076,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff4f4f4),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // errorText: emaill?"Enter Email":null,
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    color: Color(0xffb3b3b3),
                    fontSize: 16,
                  ),
                  // prefixIcon: Icon(
                  //   Icons.email_outlined,
                  //   color: Color(0xffb3b3b3),
                  //   size: 18,
                  // ),
                ),
              )),
        ],
      ),
    );
  }
}
