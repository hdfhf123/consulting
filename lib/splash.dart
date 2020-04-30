import 'dart:async';
import 'package:consulting/login.dart';
import 'package:flutter/material.dart';
class SplashClass extends StatefulWidget {
  @override
  _SplashClassState createState() => _SplashClassState();
}

class _SplashClassState extends State<SplashClass> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Login())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              // color: Colors.blue,
              color:Colors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: Image(
                          image: AssetImage('images/logo.png'),
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        child: Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.only(top: 30, left: 40, right: 40),
                          decoration: new BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.0),
                            borderRadius: new BorderRadius.all(Radius.elliptical(200, 60)),
                          ),
                          child: Text('     '),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
