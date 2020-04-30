import 'package:consulting/login.dart';
import 'package:flutter/material.dart';
class VerifyEmailClass extends StatefulWidget {
  @override
  _VerifyEmailClassState createState() => _VerifyEmailClassState();
}

class _VerifyEmailClassState extends State<VerifyEmailClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:30.0,left: 5,right: 5),
                child: Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:10.0,bottom: 10),
                        child: Text(
                          "Verification code is send to Email",
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 18.0, ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:18.0,right: 18,bottom: 5,top: 0),
                        child: TextField(TextName: "Enter verification code"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:18.0,right: 18,bottom: 15,top: 10),
                        child: MaterialButton(

                          height: 48,
                          minWidth: 150,
                          color:Color(0xFF001E36),
                          child: Text('VERIFY',
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
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                        ),
                      ),
                    ],),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class TextField extends StatelessWidget {

  TextField({
    this.TextName,
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
