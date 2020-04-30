import 'package:consulting/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
class SignUpClass extends StatefulWidget {
  @override
  _SignUpClassState createState() => _SignUpClassState();
}

class _SignUpClassState extends State<SignUpClass> {
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
              child: TextField( icons: Icon(Icons.perm_identity),textName: "Name"),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 5,top: 5),
              child: TextField(icons: Icon(Icons.perm_identity),textName: "Surname",),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 5,top: 0),
              child: TextField(icons: Icon(Icons.phone),textName: "Telephone"),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 5,top: 5),
              child: TextField(icons: Icon(Icons.email),textName: "Email",),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 5,top: 5),
              child: TextField(icons: Icon(Icons.remove_red_eye),textName: "Password",),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 5,top: 10),
              child: LoginButton(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16,bottom: 5,top: 13),
                  child: Text('Already have an account?',
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
                child: Text('LOGIN',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),),
                elevation: 2,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
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

class LoginButton extends StatelessWidget {
  LoginButton({this.title,
    this.icons,
  });

  final String title;
  final Icon icons;


  @override
  Widget build(BuildContext context) {
    return ResponsiveContainer(
      widthPercent: 100.0,
      heightPercent: 8.0,
      child: MaterialButton(

        color:Color(0xFF001E36),
        child: Text('REGISTER',
          style: TextStyle(
            color: Colors.white,
          ),),
        elevation: 2,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        onPressed: (){

        },
      ),
    );
  }
}
class TextField extends StatelessWidget {

  TextField({this.textName,
    this.icons,
    this.hintText});

  final String textName;
  final Icon icons;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
          hintText: '',
          labelText: textName,
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

