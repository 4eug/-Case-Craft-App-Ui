import 'package:case_craft_ui/constants.dart';
import 'package:case_craft_ui/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreenOne extends StatefulWidget {
  const IntroScreenOne({Key key}) : super(key: key);

  @override
  _IntroScreenOneState createState() => _IntroScreenOneState();
}

class _IntroScreenOneState extends State<IntroScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(padding: EdgeInsets.all(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "The Power",
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: kPurple,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("To give your gadgets",
                  style: GoogleFonts.montserrat(
                    fontSize: 23,
                    color: kPurple,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("breathtaking cases",
                  style: GoogleFonts.montserrat(
                    fontSize: 23,
                    color: kPurple,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                  ))
            ],
          ),
          SizedBox(height: 20),
          _phoneImage(),
          SizedBox(height: 100),
          _nextBtn(context)
        ])));
  }
}

Widget _phoneImage() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 400,
        child: Image.asset(UIGuide.phone_mock),
      ),
    ],
  );
}

Widget _nextBtn(context) {
  // ignore: deprecated_member_use
  return FlatButton(
    onPressed: () => {Navigator.of(context).push(routeOne())},
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
    child: Text(
      "Next",
      style: GoogleFonts.montserrat(
        fontSize: 20,
        color: kWhite,
        letterSpacing: 0.168,
        fontStyle: FontStyle.italic,
      ),
    ),
    color: kPurple,
  );
}
