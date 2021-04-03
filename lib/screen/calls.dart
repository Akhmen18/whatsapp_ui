import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/calls.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context, i) => Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10.0)),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 25.0,
                    backgroundImage: NetworkImage(callData[i].imageUrl),
                  ),
                  title: Text(
                    callData[i].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    callData[i].time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  trailing: Icon(Icons.call),
                  selected: true,
                ),
                Divider(
                  height: 20.0,
                ),
              ],
            ));
  }
}
