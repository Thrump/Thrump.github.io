import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      children: <Widget>[
        Image(
            image: NetworkImage(
                'https://cdn.britannica.com/37/75637-050-B425E8F1/Killer-whale.jpg')),
        Container(
          child: Text(
            'A Whale',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          margin: EdgeInsets.all(50),
          alignment: Alignment.center,
        )
      ],
    ));
  }
}
