import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
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
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: new Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: new TextFormField(
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            prefixIcon: const Icon(Icons.email),
                            hintText: 'Enter your Email',
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    )),
                new Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: new Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: new TextFormField(
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            prefixIcon: const Icon(Icons.vpn_key),
                            hintText: 'Enter your Password',
                            labelText: 'Password',
                            border: OutlineInputBorder(
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
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                      onPressed: () => null,
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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
