import 'package:flutter/material.dart';

class viewtopartis extends StatefulWidget {
  List<String> backimg;
  List<String> following;
  List<String> follower;
  List<String> ids;
  List<String> name;
  List<String> proimg;
  int index;

  viewtopartis(this.backimg, this.following, this.follower, this.ids, this.name,
      this.proimg, this.index);

  @override
  State<viewtopartis> createState() => _viewtopartisState();
}

class _viewtopartisState extends State<viewtopartis> {
  List image = ["images/ra1.png", "images/ra2.png", "images/ra3.png"];

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
                // margin: EdgeInsets.only(left: 63),
                child: Center(
                    child: Text(
                  "Details",
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
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: th * 0.27,
                      width: tw * 0.85,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.backimg[widget.index]),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                      top: th * 0.2,
                      child: Container(
                        height: th * 0.13,
                        width: th * 0.13,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            image: DecorationImage(
                                image: AssetImage(widget.proimg[widget.index]),
                                fit: BoxFit.cover),
                            // color: Colors.red,
                            shape: BoxShape.circle),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: th * 0.1,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              // color: Colors.red,
              child: Text(
                widget.name[widget.index],
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
                widget.ids[widget.index],
                style: TextStyle(
                  fontSize: th * 0.02,
                ),
              ),
            ),
          ),
          SizedBox(
            height: th * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: th * 0.07,
                width: tw * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "${widget.follower[widget.index]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Followers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFFB4B4B4),
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0XFFF4F4F4),
                    borderRadius: BorderRadius.circular(15)),
              ),
              Container(
                height: th * 0.07,
                width: tw * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "${widget.following[widget.index]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Following",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFFB4B4B4),
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0XFFF4F4F4),
                    borderRadius: BorderRadius.circular(15)),
              )
            ],
          ),
          SizedBox(
            height: th * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 30),
              // color: Colors.orange,
              child: Text(
                "Recent arts",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
              child: Container(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: image.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                  height: th * 0.05,
                  width: tw * 0.3,
                  // padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      // color: Colors.orange,
                      image: DecorationImage(image: AssetImage(image[index]),fit: BoxFit.fill)),
                );
              },
            ),
          )),
        ],
      ),
    );
  }
}
