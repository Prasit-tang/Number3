
import 'package:flutter/material.dart';
import 'package:guangglo/utility/my_style.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Field

  // Method

     Widget nameForm() {
    Color color = Colors.purple;
    return Container(
      child: TextField(
        decoration: InputDecoration(
            enabledBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: color)),
            icon: Icon(
              Icons.face,
              size: 36.0,
              color: color,
            ),
            helperText: 'Type Your Name in Blank',
            helperStyle: TextStyle(color: color),
            labelText: 'Display Name :',
            labelStyle: TextStyle(color: color)),
      ),
    );
  }

  Widget emailForm() {
    Color color = Colors.purple;
    return Container(
      child: TextField(
        decoration: InputDecoration(
            enabledBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: color)),
            icon: Icon(
              Icons.face,
              size: 36.0,
              color: color,
            ),
            helperText: 'Type Your Email in Blank',
            helperStyle: TextStyle(color: color),
            labelText: 'Email :',
            labelStyle: TextStyle(color: color)),
      ),
    );
  }

 

  Widget cameraButton() {
    return IconButton(
      icon: Icon(
        Icons.add_a_photo,
        size: 36.0,
        color: MyStyle().darkColor,
      ),
      onPressed: () {},
    );
  }

  Widget galleryButton() {
    return IconButton(
      icon: Icon(
        Icons.add_photo_alternate,
        size: 36.0,
        color: MyStyle().darkColor,
      ),
      onPressed: () {},
    );
  }

  Widget showButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        cameraButton(),
        galleryButton(),
      ],
    );
  }

  Widget showAvartar() {
    return Container(
      child: Image.asset('images/avartar.png'),
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
    );
  }

  Widget registerButton() {
    return IconButton(
      tooltip: 'Upload to Firebase',
      icon: Icon(
        Icons.cloud_upload,
      ),
      onPressed: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[registerButton()],
        title: Text('Register'),
      ),
      body: ListView(
        children: <Widget>[
          showAvartar(),
          showButton(),
          nameForm(),
          emailForm(),
        ],
      ),
    );
  }
}
