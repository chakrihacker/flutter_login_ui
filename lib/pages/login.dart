import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(244, 92, 31, 1),
    ));
    return new Scaffold(
        backgroundColor: Color.fromRGBO(248, 248, 248, 1),
        body: SafeArea(
            top: false,
            bottom: false,
            child: new ListView(
              children: <Widget>[
                new Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFF5591F), Color(0xFFF5871F)]),
                        color: Color.fromRGBO(244, 92, 31, 1),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100))),
                    // color: Color.fromRGBO(244, 92, 31, 1),
                    height: 200,
                    padding:
                        EdgeInsets.symmetric(horizontal: 55, vertical: 150),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                      textAlign: TextAlign.end,
                    )),
                new Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 5),
                    child: new Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: new TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            prefixIcon: const Icon(Icons.email),
                            hintText: 'Enter your Email',
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    )),
                new Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: new Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: new TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            prefixIcon: const Icon(Icons.vpn_key),
                            hintText: 'Enter your Password',
                            labelText: 'Password',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    )),
                new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: new FlatButton(
                      onPressed: () => null,
                      child: new Align(
                        alignment: Alignment.centerRight,
                        child: new Text(
                          "Forgot Password?",
                          textAlign: TextAlign.right,
                        ),
                      ),
                    )),
                new Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: new Container(
                      padding: EdgeInsets.only(top: 40, bottom: 25),
                      child: new RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Color.fromRGBO(244, 92, 31, 1),
                        onPressed: () => null,
                        child: new Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text("Don't have an Account?"),
                    new FlatButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/register'),
                      child: Text(
                        "Register",
                        style: TextStyle(color: Color.fromRGBO(244, 92, 31, 1)),
                      ),
                    )
                  ],
                ),
              ],
            )));
  }
}
