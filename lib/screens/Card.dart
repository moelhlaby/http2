import 'package:flutter/material.dart';
import 'package:http2/models/User.dart';

class UserCard extends StatefulWidget {
  String content ;
  UserCard({this.content ='_'});
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(widget.content)),
        ),
      ),
    );
  }
}
