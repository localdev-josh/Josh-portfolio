import 'package:flutter/material.dart';

class JoshIllustration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 140),
      height: MediaQuery.of(context).size.height / 2,
      child: Image.asset('assets/images/joshIllustration.png',),
    );
  }
}