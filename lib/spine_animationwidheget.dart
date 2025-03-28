
import 'package:flutter/material.dart';
import 'package:spine_flutter/spine_widget.dart';

class SpineAnimationWidget extends StatefulWidget {
  @override
  _SpineAnimationWidgetState createState() => _SpineAnimationWidgetState();
}

class _SpineAnimationWidgetState extends State<SpineAnimationWidget> {
  late SpineWidgetController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SpineWidgetController();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Spine Animation - Snake")),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              child: SpineWidget.fromAsset(
                
                "assets/Snake.atlas",
                "assets/Snake.json",
                _controller,
                sizedByBounds: true,
                fit: BoxFit.cover,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _controller.resume();
               },
              child: Text("Resume"),
            ),
          ],
        ),
      ),
    );
  }
}
