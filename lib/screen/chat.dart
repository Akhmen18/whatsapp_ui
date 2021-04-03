import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) => Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25.0,
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  messageData[i].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  messageData[i].time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            subtitle: Text(
              messageData[i].message,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
            ),
          ),
          Divider(
            height: 20.0,
          ),
        ],
      ),
      itemCount: messageData.length,
    );
  }
}
