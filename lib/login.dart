import 'package:consulting/home.dart';
import 'package:consulting/resetpassword.dart';
import 'package:consulting/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:responsive_container/responsive_container.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: AspectRatio(
                aspectRatio: 2.0,
                child: Container(
                    child: Image.asset('images/background.png',
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fill,
                    )),
              ),
            ),
//            AspectRatio(
//              aspectRatio: 2.0,
//              child: Image.asset('images/background.png'),
//            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 5,top: 0),
              child: TextField(icons: Icon(Icons.email),TextName: "Email"),
            ),
            Padding(
                    padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 5,top: 5),
                    child: TextField(icons: Icon(Icons.remove_red_eye),TextName: "Password",),
                  ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 5,top: 10),
              child: MaterialButton(
                height: 48,
                minWidth: 330,
                color:Color(0xFF001E36),
                child: Text('LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                elevation: 2,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>HomeClass()),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: GestureDetector(
                    child: Text('Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Gotham',
                    ),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ResetPasswordClass()),
                      );
                    },
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Dash(
                      direction: Axis.horizontal,
                      length: 100,
                      dashLength: 8,
                      dashColor: Colors.grey),
                  Text('Login With'),
                  Dash(
                      direction: Axis.horizontal,
                      length: 100,
                      dashLength: 8,
                      dashColor: Colors.grey),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 10,bottom: 5),
              child: RaisedButton(

                elevation: 2,
                  shape:  RoundedRectangleBorder(
                      borderRadius:  BorderRadius.circular(30.0)),
                  onPressed: () {
                  },
                  child:  Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        Image.asset(
                        'images/facebook.png',
                        height: 48.0,
                        //width: 100.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          child: Center(
                            child: new Text(
                              "Facebook",
                              style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                 color: Color(0xFF293C9A),
                  textColor: Color(0xFFFFFFFF),

                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 5,bottom: 5),
              child: RaisedButton(
                elevation: 2,
                shape:  RoundedRectangleBorder(
                    borderRadius:  BorderRadius.circular(30.0)),
                onPressed: () {
                },
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Image.asset(
                      'images/google.png',
                      height: 48.0,
                      width: 120.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 0.0,right: 0),
                        child: new Text(
                          "Google",
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                color: Color(0xFFFFFFFF),

                textColor: Colors.black,

              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16,bottom: 5,top: 42),
                  child: Text('Dont have an account?',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Gotham',
                    ),),
                )
              ],
            ),
           ResponsiveContainer(
             widthPercent: 100,
             heightPercent: 9,
             child: MaterialButton(
              height: 45,
               minWidth: 360,
               color:Color(0xFF001E36),
               child: Text('SIGNUP',
                 style: TextStyle(
                   fontFamily: 'Gotham',
              color: Colors.white,
          ),),
             elevation: 2,
             onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => SignUpClass()),
               );
             },
      ),
           ),
          ],

        ),
      ),
    );
  }
}

class TextField extends StatelessWidget {

  TextField({this.TextName,
             this.icons,
              this.hintText});

  final String TextName;
  final Icon icons;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        hintText: '',
          labelText: TextName,
          fillColor: Colors.white,
          border:  OutlineInputBorder(
            borderRadius:  BorderRadius.circular(8.0),
            borderSide:  BorderSide(
            ),
          ),
          suffixIcon: icons

        //fillColor: Colors.green
      ),
      keyboardType: TextInputType.emailAddress,

    );
  }
}

