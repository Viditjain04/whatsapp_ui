import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/storypage.dart';

class Status_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                ),
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      foregroundColor: Colors.grey,
                      child: Image(
                        image: AssetImage('images/avators.png'),
                        color: Colors.black87,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    Positioned(
                      right: 1.0,
                      bottom: 0.0,
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                      ),
                    ),
                  ],
                ),
              ),
              title: Text(
                'My Status',
                style: TextStyle(
                    color: Colors.black87,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              subtitle: Text(
                'Tap to add status updates',
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black26,
            width: double.infinity,
            height: 35,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0, top: 7),
              child: Text(
                'Recent updates',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(0.0),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                    ),
                    child: Stack(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          child: Image(
                            image: AssetImage('images/avators.png'),
                            color: Colors.black26,
                          ),
                          backgroundColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  title: Text(
                    'Bill Gates',
                    style: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  subtitle: Text(
                    'Today 19:20 p.m.',
                    style: TextStyle(
                      color: Colors.black87,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StoryPageView()),
                    );
                  },
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
