import 'package:flutter/material.dart';

void main() => (runApp(new MyApp()));

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
        primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black, fontFamily: 'Roboto')),
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
      body: _instaBody(),
      bottomNavigationBar: _bottomAppBar(),
    );
  }

  Widget _topBar() {
    return new AppBar(
      title: new SizedBox(
        height: 31.0,
        child: Image.asset("./Assets/ins_logo.png"),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: new Icon(
        Icons.camera_alt,
        color: Colors.black,
      ),
      elevation: 1.0,
      actions: <Widget>[
        new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Icon(
            Icons.send,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  Widget _bottomAppBar() {
    return new Container(
      height: 45,
      color: Colors.white,
      alignment: Alignment.center,
      child: new BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(
              onPressed: () {},
              icon: new Icon(Icons.home),
            ),
            new IconButton(
              onPressed: () {},
              tooltip: 'search',
              icon: new Icon(Icons.search),
            ),
            new IconButton(
              onPressed: () {},
              icon: new Icon(Icons.add_box),
            ),
            new IconButton(
              onPressed: () {},
              icon: new Icon(Icons.favorite),
            ),
            new IconButton(
              onPressed: () {},
              icon: new Icon(Icons.account_box),
            )
          ],
        ),
      ),
    );
  }

  Widget _instaBody() {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Flexible(
          child: _instaList(),
        )
      ],
    );
  }
}

Widget _instaList() {
  return new Container(

  );
}