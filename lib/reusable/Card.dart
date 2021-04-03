import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Cards extends StatelessWidget {
  final String name, imageUrl, time;
  Cards(this.name, this.imageUrl, this.time);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        foregroundColor: Colors.lightGreenAccent,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(time),
    );
  }
}
