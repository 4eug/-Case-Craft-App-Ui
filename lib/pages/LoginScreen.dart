import 'package:case_craft_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                "We Deliver",
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
              Text("Design, order and relax. Let",
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
              Text("us worry about the lifting",
                  style: GoogleFonts.montserrat(
                    fontSize: 23,
                    color: kPurple,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                  ))
            ],
          ),
          SizedBox(height: 70),
          _deliveryImage(),
          SizedBox(height: 40),
          _loginBtn(),
          SizedBox(height: 20),
          _createAccountBtn()
        ])));
  }
}

Widget _deliveryImage() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 400,
        child: Image.asset(UIGuide.delivery_image),
      ),
    ],
  );
}

Widget _loginBtn() {
  // ignore: deprecated_member_use
  return FlatButton(
    onPressed: () => {},
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 120),
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(50.0),
    ),
    child: Text(
      "Log in",
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

Widget _createAccountBtn() {
  // ignore: deprecated_member_use
  return FlatButton(
    onPressed: () => {},
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(50.0),
    ),
    child: Text(
      "Create account",
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
