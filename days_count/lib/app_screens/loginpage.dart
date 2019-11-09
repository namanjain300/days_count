import 'package:days_count/app_screens/dropdown.dart';
import 'package:flutter/material.dart';
import 'dropdown.dart';

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String email;
  String password;
  bool _autoValidate = true;

  final _formKey = GlobalKey<FormState>();

  String validateEmail(String value) {
    Pattern patternemail =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(patternemail);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validatePass(String value) {
    Pattern patternpass =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(patternpass);
    if (!regExp.hasMatch(value))
      return 'Enter a Valid Password having Uppercase, Lowercase, Numerical \nNumber & Special Character';
    else
      return null;
  }

  String validateMobileNo(String value) {
    Pattern patternMobileno = r'^(){1}[1-9]{1}[0-9]{9}$';
    RegExp regExp = new RegExp(patternMobileno);
    if (!regExp.hasMatch(value))
      return 'Enter a Valid 10 Digits Mobile No.';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          children: <Widget>[
            Form(
                key: _formKey,
                autovalidate: _autoValidate,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        validator: validateEmail,
                        decoration: InputDecoration(
                            hintText: 'Enter e-mail address',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            labelText: 'E-mail'),
                        onSaved: (String value) {
                          email = value;
                        },
                        keyboardType: (TextInputType.emailAddress),
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                          validator: validatePass,
                          onSaved: (String value) {
                            password = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            hintText: 'Enter Password',
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: TextFormField(
                              validator: validateMobileNo,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Mobile No.',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                hintText: 'Enter Mobile No.',
                              ))),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RaisedButton(
                              elevation: 8.0,
                              color: Colors.green,
                              splashColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                              child: Text("Login"),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Monthday()));
                              },
                            ),
                            RaisedButton(
                              elevation: 8.0,
                              color: Colors.white,
                              splashColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                              child: Text("Reset"),
                              onPressed: () {
                                setState(() {
                                  _formKey.currentState.reset();
                                });
                              },
                            )
                          ]),
                    ],
                  ),
                )),
          ],
        ));
  }
}
