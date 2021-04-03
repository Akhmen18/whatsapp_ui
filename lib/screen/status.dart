import 'package:flutter/material.dart';
import 'package:whatsapp_ui/reusable/Card.dart';
import 'package:whatsapp_ui/models/chat.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Cards(
            'My Status',
            "https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            'Tap to add Status'),
        Divider(
          height: 20.0,
        ),
        Heading('Recent Updates'),
        Cards(messageData[2].name, messageData[2].imageUrl, messageData[2].time)
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 5.0),
        child: Text(
          heading,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
