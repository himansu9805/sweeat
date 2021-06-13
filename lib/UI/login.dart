import 'package:flutter/material.dart';

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
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 15.0),
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
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: deviceHeight / 4,
                            width: deviceWidth,
                            padding: EdgeInsets.symmetric(horizontal: 25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Login to your",
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 40.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "ACCOUNT",
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 60,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
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
                            borderSide: BorderSide(color: Colors.white),
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
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
