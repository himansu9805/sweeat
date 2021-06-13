import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: deviceWidth,
          height: deviceHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff7F00FF),
                Color(0xffE100FF),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                width: deviceWidth,
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/vectors/login.svg',
                          height: 225,
                        ),
                        Container(
                          width: deviceWidth * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Login to your",
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 40.0,
                                ),
                              ),
                              Text(
                                "ACCOUNT",
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 60,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: TextField(
                        cursorColor: Color(0xff5f4bfc),
                        decoration: InputDecoration(
                          hintText: "Please enter your email",
                          hintStyle: TextStyle(
                            fontFamily: 'SF Pro Display',
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.black26,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff5f4bfc)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Please enter your password",
                          hintStyle: TextStyle(
                            fontFamily: 'SF Pro Display',
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.black26,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff5f4bfc)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot your password",
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 45,
                    width: deviceWidth * 0.7,
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                      color: Color(0xff5f4bfc),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: 17.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: 45,
                    width: deviceWidth * 0.7,
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                      color: Colors.white,
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 20,
                          color: Color(0xff5f4bfc),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
