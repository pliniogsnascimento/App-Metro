import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderBackButton extends StatelessWidget {

  String title;

  HeaderBackButton(this.title);

  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
            size: 30
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          this.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 26.0,
            fontFamily: "Calibre-Semibold",
            letterSpacing: 1.0,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black38,
                offset: Offset(2.0, 2.0),
              ),
            ]
          )
        ),
      ],
    );
  }

}