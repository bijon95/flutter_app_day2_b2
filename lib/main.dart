import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  //Container
  //Row
  //colum
  //stack
  //Text
  //img
  //textfield
  //button

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Flutter class 2"),
      ),
      body:SingleChildScrollView(
        child: Stack(
          children: [

            //red
            Container(
              height: MediaQuery.of(context).size.height-200,
              width:double.infinity,
              color: Colors.red,
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
                children: [
               Container(
                 height: 100,
                 width: 100,
                 color: Colors.white,
               ),
               Container(
                 height: 100,
                 width: 100,
                 color: Colors.black,
               ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.white,
                  ),


              ],),
            ),
            // purple
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurple,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
        ],),
      ),

    );
  }
}
