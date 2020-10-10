import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

String url = 'tel : +8740909704';

class Calls_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        call();
      },
      child: Text('make a call'),
      color: Colors.teal,
    );
  }
}

Future<void> call() async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'could not call';
  }
}
