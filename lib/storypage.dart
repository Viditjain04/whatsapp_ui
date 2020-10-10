import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pokemon_app/Screens/Status_screen.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(
          textStyle: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 50.0,
            fontWeight: FontWeight.w800,
            color: Colors.amber,
          ),
          title: 'Announcing \n Flutter\n Windows\n Alpha\n\n➡⏩➡',
          backgroundColor: Colors.red),
      StoryItem.text(
          duration: Duration(seconds: 5),
          roundedTop: true,
          roundedBottom: true,
          textStyle: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
          title:
              'Our mission is to provide developers with an open source,\n high-productivity framework for building beautiful,\n native apps on any platform. So far,\n we’ve shipped production-quality support for Android \nand iOS, with eight stable releases and over 100,000 apps \nshipped to the Google Play Store alone. We continue to broaden \nour focus to include other platforms including web, macOS, and Linux.\n Today, we’re pleased to announce an additional target for Flutter with the alpha release \nof Flutter support for Windows',
          backgroundColor: Colors.blue),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: false,
      ),
    );
  }
}
