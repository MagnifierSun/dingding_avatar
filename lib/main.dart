import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dingding icon generator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = '测试';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(
          children: <Widget>[
            new Align(
                alignment: FractionalOffset.topCenter,
                child: Container(
                  padding: EdgeInsets.only(top: 50),
                  child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        name,
                        style: TextStyle(color: Colors.white, fontSize: 58),
                      ),
                    ),
                  ),
                ),
                )),
            new Align(
              alignment: FractionalOffset.center,
              child: Container(
                padding: EdgeInsets.only(left: 12,right: 12),
                child: TextField(
                cursorColor: Colors.blue,
                onChanged: (str) {
                  int length = str.length;
                  if (length > 2) {
                    str = str.substring(length - 2);
                  }
                  setState(() {
                    name = str;
                  });
                },
              ),
              ),
            ),
            new Align(
              alignment: FractionalOffset.bottomCenter,
              child: Text('自己截图保存',style: TextStyle(
                color: Colors.blue,
                fontSize: 16
              ),),
            )
          ],
        ));
  }
}
