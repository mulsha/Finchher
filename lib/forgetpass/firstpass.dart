import 'package:fincherr/forgetpass/secoundpass.dart';
import 'package:flutter/material.dart';

class firstpass extends StatefulWidget {
  const firstpass({Key? key}) : super(key: key);

  @override
  State<firstpass> createState() => _firstpassState();
}

class _firstpassState extends State<firstpass> {
  bool sign = false;
  TextEditingController email=TextEditingController();
  bool emaill=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
              child: Text(
                'Forgot your password?',
                textAlign: TextAlign.left,
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
            width: 220,
            // color: Colors.orange,
            child: Center(
                child: Text(
                  'Please enter your registered email address.',
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
                )),
          ),
          SizedBox(height: 40),
          Container(
              width: 280,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff4f4f4),
              ),
              child: TextFormField(controller: email,
                onTap: () {
                  setState(() {
                    sign = true;
                  });
                },
                // validator: MultiValidator([
                //   RequiredValidator(errorText: "Enter Email"),
                //   EmailValidator(errorText: "Enter Valid Email")
                // ]),

                keyboardType: TextInputType.emailAddress,
                autofillHints: [AutofillHints.email],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  errorText: emaill?"Please Enter Email":null,
                  errorBorder: OutlineInputBorder(),
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
            height: 230,
          ),
          InkWell(
            onTap: () {
              setState(() {
                if(email.text.isEmpty)
                {
                  emaill=true;
                }
                else
                {
                  emaill=false;
                }
              });
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return secoundpass();
                },
              ));
            },
            child: Container(
              width: 287,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: sign ? Color(0xff2c52ef) : Color(0xffe6eafc),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: sign ? Colors.white : Color(0xff080623),
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
    ),);
  }
}
