import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class CurrentLocationScreen extends StatefulWidget {
  @override
  _CurrentLocationScreenState createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(14.0),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Get Other Location', style: TextStyle(color: Colors.orange, fontSize: 18.0,),textAlign: TextAlign.center,),
                      SizedBox(width: 5.0),
                      Icon(EvaIcons.pin, color: Colors.orange, size: 20.0,),
                    ],
                  ),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.only(left: 14.0, right: 14.0, bottom: 14.0, top: 120.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(EvaIcons.sun, color: Color(0xaaffffff), size: 80.0),
                    SizedBox(width: 100.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Icon(EvaIcons.pin, color: Color(0xaaffffff), size: 25.0),
                        SizedBox(width: 5.0),
                        Text('Yaounde', style: TextStyle(color: Color(0xaaffffff), fontSize: 25.0)),
                      ],
                    ),
                    Text('25 C', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 70.0)),
                    SizedBox(width: 5.0),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 56.0, bottom: 16.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text('LATITUDE', style: TextStyle(fontSize: 10.0, color: Color(0xaaffffff))),
                                      Text('35.4', style: TextStyle(fontSize: 30.0, color: Color(0xaaffffff))),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 25.0),
                                Container(
                                  margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 56.0, bottom: 16.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text('LONGITUDE', style: TextStyle(fontSize: 10.0, color: Color(0xaaffffff))),
                                      Text('35.4', style: TextStyle(fontSize: 30.0, color: Color(0xaaffffff)))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('Buy a cool drink this for this beautiful', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
