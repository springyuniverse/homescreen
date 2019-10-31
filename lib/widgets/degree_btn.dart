import 'package:flutter/material.dart';
import 'package:homescreen/home_screen.dart';

class DegreeBtnWidget extends StatelessWidget {
  DegreeBtnWidget({@required this.degree});

  final Degree degree;

  @override
  Widget build(BuildContext context) {
    String text = degree == Degree.bachelor
        ? 'Bachelor'
        : degree == Degree.master
            ? 'Master'
            : degree == Degree.phd ? 'PHD' : '';
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontFamily: 'Arboria-Bold'),
            ),
            Text(
              'Degree',
              style: TextStyle(fontFamily: 'Arboria-Light'),
            ),
          ],
        ),
      ),
      height: 200,
      width: 30,
      decoration: BoxDecoration(
          color: selectedDegree == degree ? activeColor : inactiveColor,
          borderRadius: BorderRadius.circular(100)),
      margin: EdgeInsets.all(10),
    );
  }
}
