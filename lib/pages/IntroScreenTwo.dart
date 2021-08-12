import 'package:case_craft_ui/constants.dart';
import 'package:case_craft_ui/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreenTwo extends StatefulWidget {
  const IntroScreenTwo({Key key}) : super(key: key);

  @override
  _IntroScreenTwoState createState() => _IntroScreenTwoState();
}

class _IntroScreenTwoState extends State<IntroScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPurple,
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(padding: EdgeInsets.all(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Blow Minds",
                style: GoogleFonts.montserrat(
                  fontSize: 30,
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
                    fontSize: 23,
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
                    fontSize: 23,
                    color: kWhite,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                  ))
            ],
          ),
          SizedBox(height: 70),
          _airpodImage(),
          SizedBox(height: 100),
          _nextBtn(context)
        ])));
  }
}

Widget _airpodImage() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 800,
        child: Image.asset(UIGuide.airpod_image),
      ),
    ],
  );
}

Widget _nextBtn(context) {
  // ignore: deprecated_member_use
  return FlatButton(
    onPressed: () => {Navigator.of(context).push(routeTwo())},
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
