import 'package:flutter/material.dart';
import 'package:cmritapp/drawer.dart';

class firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                  constraints: BoxConstraints.expand(height: 400.0, width: 300),
                  child: Image(
                    image: AssetImage("Images/FinalCmritLogo.png"),
                  )),
            ),
            Center(
              child: FlatButton(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blueAccent,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return drawer();
                  }));
                },
              ),
            ),
          ],
        ));
  }
}
