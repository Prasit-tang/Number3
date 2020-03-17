import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guangglo/utility/my_style.dart';
import 'package:guangglo/widget/register.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
// Field

// Method

  Widget mySizebox() {
    return SizedBox(
      width: 5.0,
    );
  }

  Widget signUpButton() {
    return Expanded(
        child: OutlineButton(
      borderSide: BorderSide(color: MyStyle().darkColor),
      child: Text(
        'Sign Up',
        style: TextStyle(color: MyStyle().darkColor),
      ),
      onPressed: () {
        print('You Click SignUp');
        MaterialPageRoute route =
            MaterialPageRoute(builder: (BuildContext builderContext) {
          return Register();
        });
        Navigator.of(context).push(route);
      },
    ));
  }

  Widget signInButton() {
    return Expanded(
      child: RaisedButton(
        color: MyStyle().darkColor,
        child: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget showButton() {
    return Container(
      width: 250.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          signInButton(),
          mySizebox(),
          signUpButton(),
        ],
      ),
    );
  }

  Widget passwordForm() {
    return Container(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(hintText: 'Password : '),
        ));
  }

  Widget userForm() {
    return Container(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(hintText: 'User : '),
          
        ));
  }

  Widget showLogo() {
    return Container(
      height: 120.0,
      width: 120.0,
      child: Image.asset('images/logon3.png'),
    );
  }

  Widget showAppName() {
    return Text(
      'Number3',
      style: GoogleFonts.candal(
          textStyle: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: MyStyle().darkColor,
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: <Color>[Colors.white, MyStyle().primaryColor],
          radius: 1.0,
        )),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            showLogo(),
            showAppName(),
            userForm(),
            passwordForm(),
            showButton(),
          ],
        )),
      ),
    );
  }
}
