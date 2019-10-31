import 'package:flutter/material.dart';
import 'widgets/degree_btn.dart';
import 'package:search_widget/search_widget.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Degree { bachelor, phd, master }

Color activeColor = Color(0xffFFB239);
Color inactiveColor = Color(0xff15212E);
Degree selectedDegree;

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/HamburgerIcon.png"))),
          ),
          onTap: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 14.0, left: 30.0),
            child: Text(
              'I am searching for',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Arboria-Light',
                  fontSize: 28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              'Someone Studying',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Arboria-Bold',
                  fontSize: 28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:30.0,right: 30.0),
            child: Row(
              children: <Widget>[
                expandedButton(Degree.bachelor),
                expandedButton(Degree.master),
                expandedButton(Degree.phd),
              ],
            ),
          ),


          SizedBox(height: 10,)
          ,Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              'Living in',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Arboria-Bold',
                  fontSize: 28),
            ),
          ),




        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //methods
  Expanded expandedButton(Degree degree) {
    return Expanded(
      child: GestureDetector(
          onTap: () {
            setState(() {
              selectedDegree = degree;
            });
          },
          child: new DegreeBtnWidget(
            degree: degree,
          )),
    );
  }
}
