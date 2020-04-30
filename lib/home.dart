import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeClass extends StatefulWidget {
  @override
  _HomeClassState createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeClass> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    void onTabTapped(int index) {
      setState(() {
//        _currentIndex = index;
      });
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF001E36),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ResponsiveContainer(
                  widthPercent: 100,
                  heightPercent: 40,
                  child:  AspectRatio(
                    aspectRatio: 2.0,
                    child: Container(
                        child: Image.asset('images/person.png',
                          alignment: Alignment.topCenter,
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                ResponsiveContainer(
                  widthPercent: 100,
                  heightPercent: 40,
                  child: Center(
                    child: Text('Person',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),

              ],

            ),
            Stack(
              children: <Widget>[
                ResponsiveContainer(
                  widthPercent: 100,
                  heightPercent: 40,
                  child:  AspectRatio(
                    aspectRatio: 2.0,
                    child: Container(
                        child: Image.asset('images/enterprise.png',
                          alignment: Alignment.topCenter,
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                ResponsiveContainer(
                  widthPercent: 100,
                  heightPercent: 40,
                  child: Center(
                    child: Text('Enterprise',
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                ),

              ],

            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF001E36),
      ),


      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            //icon: new Icon(Icons.home),
            icon: Icon(FontAwesomeIcons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
         //backgroundColor: Color(0xFF001E36),
            backgroundColor: Color(0xFF8E7EF0),
            icon: Icon(FontAwesomeIcons.envelope),
            title: new Text('Chat'),
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              title: Text('Profile')
          )
        ],
      ),


    );
  }
}
