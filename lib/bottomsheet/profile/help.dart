import 'package:flutter/material.dart';

class help extends StatefulWidget {
  const help({Key? key}) : super(key: key);

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
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
        ],
      ),
    );
  }
}
