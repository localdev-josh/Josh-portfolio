import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xffECECEC), width: 2))
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            margin: EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/logo/logo.png"),
                ),
                SizedBox(width: 100),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _NavBarItem('About'),
                    SizedBox(width: 40),
                    _NavBarItem('Works')
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 64,
            margin: EdgeInsets.only(right: 80, top: 0, bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(color: Color(0xffECECEC), width: 2))
            ),
            child: Row(
              children: [
                RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  onPressed: () {},
                  color: Colors.black,
                  splashColor: Colors.black,
                  child: Text('Resume', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17, color: Color(0xffE7E7E7)),),
                ),
                SizedBox(width: 20,),
                Text('Contact', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;

  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),);
  }
}
