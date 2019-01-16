import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(248, 248, 248, 1),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Container(
                    width: double.infinity,
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
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                      textAlign: TextAlign.end,
                    )),
                new Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 5),
                    child: new Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: new TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'Enter your Full Name',
                            labelText: 'Full Name',
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(244, 92, 31, 1))),
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
                            prefixIcon: const Icon(Icons.email),
                            hintText: 'Enter your Email',
                            labelText: 'Email',
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(244, 92, 31, 1))),
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
                            prefixIcon: const Icon(Icons.phone),
                            hintText: 'Enter your Phone Number',
                            labelText: 'Phone Number',
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(244, 92, 31, 1))),
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
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            prefixIcon: const Icon(Icons.vpn_key),
                            hintText: 'Enter your Password',
                            labelText: 'Password',
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(244, 92, 31, 1))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    )),
                new Padding(
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                    child: new Container(
                      width: double.infinity,
                      child: new RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Color.fromRGBO(244, 92, 31, 1),
                        onPressed: () => null,
                        child: new Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text("Already a member?"),
                    new FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Color.fromRGBO(244, 92, 31, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
