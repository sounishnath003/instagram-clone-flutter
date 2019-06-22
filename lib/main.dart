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
          child: instaList(),
        )
      ],
    );
  }

}


class instaList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
    itemCount: 18,
    itemBuilder: (BuildContext context, int index) => index == 0? new SizedBox(
      child: _instaStories(),
      height: deviceSize.height * 0.19,
    ) : new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,16.0,8.0,16.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                height: 40,
                width: 40,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://yt3.ggpht.com/-n6_Bu3mtBAk/AAAAAAAAAAI/AAAAAAAAfUA/2bT7qLvk1h8/s88-mo-c-c0xffffffff-rj-k-no/photo.jpg"),
                  )
                ),
              ),
            new SizedBox(width: 10.0,
            ),
            new Text("sounish003",
            style: new TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
                ],
              )
        ),
         new IconButton(
          icon: Icon(Icons.more_vert),
          color: Colors.black,
          iconSize: 20,
        )
          ],
        ),
        ),
        ]
    )
  );
  }

Widget _instaStories() {
  return new Container( 
    margin: const EdgeInsets.all(16.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _topText(),
        _storiesAll(),
      ],
    ),
    );
}

Widget _topText() {
return new Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    _storiesButton(),
    _watchAll(),
  ],
);
}


Widget _storiesButton(){
  return new Text('Stories',
    style: new TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16.0
    ),
    );
}

Widget _watchAll(){
  return new Row(
      children: <Widget>[
        Icon(Icons.play_arrow),
        new SizedBox(width: 3.0,),
        new Text("Watch All",
        style: new  TextStyle(
          fontWeight: FontWeight.bold
        ),
        )
      ],
      );
}

Widget _storiesAll() {
  return new Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 18,
        itemBuilder: (BuildContext context, int index) => new Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: 60.0,
                height: 60.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://yt3.ggpht.com/-n6_Bu3mtBAk/AAAAAAAAAAI/AAAAAAAAfUA/2bT7qLvk1h8/s88-mo-c-c0xffffffff-rj-k-no/photo.jpg"),
                  )
                ),
              ),
              (index == 0) ? new Positioned(
                right: 11.0,
                child: new CircleAvatar(
                  radius: 12.0,
                  backgroundColor: Colors.blueAccent,
                  child: new Icon(
                    Icons.add,
                    color: Colors.white,
                    ),
                ),
              ) : new Container()
            ],
          ),
      ),
    ),
  );
}







}