import 'package:employeeapp/views/register.dart';
import 'package:employeeapp/views/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  TextEditingController employeeCode = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: ListView(
        children: <Widget>[
          TextField(
            controller: employeeCode,
            decoration: InputDecoration(hintText: "Employee code"),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(hintText: "password"),
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text("Login"),
            onPressed: () {
              String getuser = employeeCode.text;
              String getpass = password.text;
              if ((getuser == "test") && (getpass == "password"))
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeScr()));
              else
                print("error");
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text("Register"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Register()));
            },
          )
        ],
      ),
    );
  }
}
