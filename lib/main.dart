
import 'package:fincherr/NFT/createnft.dart';
import 'package:fincherr/demoo.dart';
import 'package:fincherr/splashscreen/first.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: first
      (),
    debugShowCheckedModeBanner: false,
  ));
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return splashfirst();
      },));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                // color: Colors.orange,
                  image: DecorationImage(
                      image: AssetImage("images/logo.png"))),
            ),
          ),
          Container(
            height: 27,
            width: 67,
            margin: EdgeInsets.fromLTRB(10, 16, 0, 0),
            child: Text(
              "Fincher",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
