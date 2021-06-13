import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_app/UI/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InitialScreen extends StatefulWidget {
  InitialScreen({Key key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<StatefulWidget> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  PageController controller = PageController();

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/lollipop.png",
                isAntiAlias: true,
                color: const Color.fromRGBO(255, 255, 255, 0.25),
                colorBlendMode: BlendMode.dstATop,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xfff6d365),
                            Color(0xfffda085),
                          ],
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/vectors/cookie_love.svg',
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.black12),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Hey there! Welcome to",
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Sweeat!",
                                  style: TextStyle(
                                    fontFamily: 'AF Yours',
                                    fontSize: 100,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = linearGradient,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 150.0,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: PageView(
                      children: <Widget>[
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent risus risus, mollis sit amet tortor vitae.",
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 17.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent risus risus, mollis sit amet tortor vitae.",
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 17.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent risus risus, mollis sit amet tortor vitae.",
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 17.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent risus risus, mollis sit amet tortor vitae.",
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 17.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                      controller: controller,
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 4,
                    effect: ExpandingDotsEffect(),
                    onDotClicked: (index) {},
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 50.0),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
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
                        SizedBox(height: 20.0),
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 3,
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 3 * size.height / 4);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, 3 * size.height / 4);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
