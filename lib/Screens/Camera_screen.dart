import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Camera_screen extends StatefulWidget {
  List<CameraDescription> cameras;
  Camera_screen(this.cameras);
  @override
  _Camera_screenState createState() => _Camera_screenState();
}

class _Camera_screenState extends State<Camera_screen> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller =
        new CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: CameraPreview(controller),
    );
  }
}
