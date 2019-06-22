import 'package:flutter/material.dart';

void main () => (runApp(new MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: new ThemeData(
        primaryColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black, fontFamily: 'Roboto')), 
        textTheme: TextTheme(title: TextStyle(color: Colors.black)),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: _topBar(), 
    );
  }


Widget _topBar() {
  return new AppBar(
    title: new SizedBox(
      height: 35.0,
      child: Image.asset("./Assets/ins_logo.png"),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: new Icon(Icons.camera_alt, color: Colors.black,),
    elevation: 1.0,
    actions: <Widget>[
      new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Icon(Icons.send, color: Colors.black,),
        )
    ],
  );
}












}
