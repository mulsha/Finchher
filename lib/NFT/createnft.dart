import 'package:fincherr/NFT/createitem.dart';
import 'package:flutter/material.dart';

class createnft extends StatefulWidget {
  const createnft({Key? key}) : super(key: key);

  @override
  State<createnft> createState() => _createnftState();
}

class _createnftState extends State<createnft> {
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
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "Please choose the catagory in which you want to \nlist your NFT.",
              style: TextStyle(fontSize: 13, fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return createitem();
                },
              ));
            },
            child: Container(
              height: 70,
              width: 270,
              decoration: BoxDecoration(
                  color: Color(0XFFF4F4F4),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0XFFFFFFFF)),
                    child: Icon(Icons.add_photo_alternate_rounded),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Images",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        child: Text(
                          "JPEG or PNG",
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              color: Color(0XFFB4B4B4)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return createitem();
            },));
          },
            child: Container(
              height: 70,
              width: 270,
              decoration: BoxDecoration(
                  color: Color(0XFFF4F4F4),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0XFFFFFFFF)),
                    child: Icon(Icons.video_library_rounded),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Videos",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        child: Text(
                          "MOV or MP4",
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              color: Color(0XFFB4B4B4)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
