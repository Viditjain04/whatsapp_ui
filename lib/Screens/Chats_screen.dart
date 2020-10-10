import 'package:flutter/material.dart';
import 'package:pokemon_app/model/Chatmodel.dart';

class Chats_screen extends StatefulWidget {
  @override
  _Chats_screenState createState() => _Chats_screenState();
}

class _Chats_screenState extends State<Chats_screen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => (Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Color(0Xff075E54),
              child: Text(
                dummyData[i].image,
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyData[i].name,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      fontSize: 17.0),
                ),
                Text(dummyData[i].time),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                dummyData[i].message,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
