import 'package:employeeapp/main.dart';
import 'package:employeeapp/views/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController employeeCode = TextEditingController();
  TextEditingController company = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Register Employee"),
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: ListView(
            children: <Widget>[
              TextField(
                controller: name,
                decoration: InputDecoration(hintText: "Name"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: employeeCode,
                decoration: InputDecoration(hintText: "Employee Code"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: company,
                decoration: InputDecoration(hintText: "Company"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: phone,
                decoration: InputDecoration(hintText: "Phone no."),
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
              TextField(
                controller: confirmPass,
                obscureText: true,
                decoration: InputDecoration(hintText: "confirm password"),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Register"),
                onPressed: () {
                  String getpass = password.text;
                  String getcpass = confirmPass.text;
                  if (getpass == getcpass)
                    print(getpass);
                                      else
                    print("Password and Confirm password does not match");
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Back to Login"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
