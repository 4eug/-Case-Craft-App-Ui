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
          _loginBtn(context),
          SizedBox(height: 20),
          _createBtn(context)
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

Widget _loginBtn(context) {
  return Container(
    width: 300,
    height: 60,
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: () => {},
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Log in                   ",
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: kWhite,
                letterSpacing: 0.168,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Icon(
            Icons.add,
            color: Colors.white,
          ),
        ],
      ),
      color: kPurple,
    ),
  );
}

Widget _createBtn(context) {
  return Container(
    width: 300,
    height: 60,
    decoration: BoxDecoration(
        border: Border.all(width: 1, color: kPurple),
        borderRadius: BorderRadius.circular(30.0)),
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: () => {},
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Create account",
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: kPurple,
                letterSpacing: 0.168,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Icon(
            Icons.add,
            color: kPurple,
          ),
        ],
      ),
      color: kWhite,
    ),
  );
}
