import 'package:flutter/material.dart';

class PortfolioIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      margin: EdgeInsets.only(left: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Developer led, design\nsupported',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 75, color: Colors.black),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'My name is Ajiboye Joshua, and I’m a Mobile | Frontend \ndeveloper and UI designer based in Lagos, Nigeria.',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300,
              fontSize: 21,
              height: 1.7,
            ),
          )
        ],
      ),
    );
  }
}
