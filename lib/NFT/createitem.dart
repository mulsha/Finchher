import 'package:dotted_border/dotted_border.dart';
import 'package:fincherr/NFT/pricenft.dart';
import 'package:flutter/material.dart';

class createitem extends StatefulWidget {
  const createitem({Key? key}) : super(key: key);

  @override
  State<createitem> createState() => _createitemState();
}

class _createitemState extends State<createitem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 120,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 40,
                  width: 40,
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
              Container(
                margin: EdgeInsets.only(left: 52),
                child: Center(
                    child: Text(
                  "Create an NFT",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      letterSpacing: 1,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              )
            ],
          ),
          Container(
            width: 280,
            height: 170,
            decoration: BoxDecoration(
                color: Color(0XFFF4F4F4),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF), shape: BoxShape.circle),
                  child: Icon(
                    Icons.cloud_upload,
                    size: 35,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Upload your files here",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0XFFB4B4B4),
                        fontFamily: 'Inter'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              SizedBox(
                width: 16,
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [6, 5],
                color: Color(0XFFB4B4B4),
                child: Container(
                  // margin: EdgeInsets.only(left: 22),
                  height: 45,
                  width: 60,
                  child: Icon(
                    Icons.add,
                    size: 18,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [6, 5],
                color: Color(0XFFB4B4B4),
                child: Container(
                  // margin: EdgeInsets.only(left: 22),
                  height: 45,
                  width: 60,
                  // child: Icon(
                  //   Icons.add,
                  //   size: 18,
                  // ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [6, 5],
                color: Color(0XFFB4B4B4),
                child: Container(
                  // margin: EdgeInsets.only(left: 22),
                  height: 45,
                  width: 60,
                  // child: Icon(
                  //   Icons.add,
                  //   size: 18,
                  // ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [6, 5],
                color: Color(0XFFB4B4B4),
                child: Container(
                  // margin: EdgeInsets.only(left: 22),
                  height: 45,
                  width: 60,
                  // child: Icon(
                  //   Icons.add,
                  //   size: 18,
                  // ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Item name",
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
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // errorText: emaill?"Enter Email":null,
                  hintText: 'Item name',
                  hintStyle: TextStyle(
                    color: Color(0xffb3b3b3),
                    fontSize: 16,
                  ),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Pricing",
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
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // errorText: emaill?"Enter Email":null,
                  hintText: 'Price',
                  hintStyle: TextStyle(
                    color: Color(0xffb3b3b3),
                    fontSize: 16,
                  ),
                ),
              )),
          SizedBox(height: 25,),
          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return pricenft();
            },));
          },
            child: Container(
              width: 287,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xff2c52ef),
              ),
              child: Center(
                child: Text(
                  "Create item",
                  style: TextStyle(
                    color: Colors.white,
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
    );
  }
}
