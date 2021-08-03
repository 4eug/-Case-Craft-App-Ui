import 'package:case_craft_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPurple,
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                  color: kPurple,
                  width: double.infinity,
                  child: Column(children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Blow Minds",
                          style: GoogleFonts.montserrat(
                            fontSize: 33,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: kWhite,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("Like Poww!!  when you take",
                            style: GoogleFonts.montserrat(
                              fontSize: 26,
                              color: kWhite,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("out your airpod in public",
                            style: GoogleFonts.montserrat(
                              fontSize: 26,
                              color: kWhite,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    SizedBox(height: 30),
                    _airpodImage(),
                    SizedBox(height: 150),
                    _loginBtn()
                  ]),
                )
              ],
            )));
  }
}

Widget _airpodImage() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: Image.asset(
          UIGuide.airpod_image,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      )
    ],
  );
}

Widget _loginBtn() {
  // ignore: deprecated_member_use
  return FlatButton(
    onPressed: () => {},
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
    child: Text(
      "Next",
      style: GoogleFonts.montserrat(
        fontSize: 20,
        color: kPurple,
        letterSpacing: 0.168,
        fontStyle: FontStyle.italic,
      ),
    ),
    color: kWhite,
  );
}
