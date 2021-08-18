import 'package:flutter/material.dart';
import 'package:http2/screens/Card.dart';
import 'package:http2/models/User.dart';
import 'package:http2/screens/TheMap.dart';
import 'package:http2/utils.dart';
class UserDetails extends StatefulWidget {
  User user ;
  UserDetails(this.user);
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          UserCard(
            content:"${widget.user.name}"  ,
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              launchURL("${widget.user.email}");
            },
            child:Text("email:${widget.user.email}") ,
          ),   SizedBox(height: 20,),
          InkWell(
            onTap: (){
              launchURL("${widget.user.phone}");
            },
            child:Text("phone:${widget.user.phone}") ,
          ),
          Divider(),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              launchURL("${widget.user.website}");
            },
            child:Text("website:${widget.user.website}") ,
          ),
          MaterialButton(onPressed: pushPage(context,
              MapSample()),
          child: Text('Location'),
          ),
        ],
      ),
    );
  }
}
