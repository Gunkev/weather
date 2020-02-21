import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';


class FindLocationScreen extends StatefulWidget {
  @override
  _FindLocationScreenState createState() => _FindLocationScreenState();
}

class _FindLocationScreenState extends State<FindLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  'Find Another location',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(14.0),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(
                      color: Colors.orange,
                    ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xaaffffff),
                    hintText: 'Enter location',
                    contentPadding: EdgeInsets.all(20.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xaaffffff))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xffffffff))
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: 200.0,
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
          ],
        ),
      ),
    );
  }
}
