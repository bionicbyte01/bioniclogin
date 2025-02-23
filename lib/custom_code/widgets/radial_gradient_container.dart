// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class RadialGradientContainer extends StatefulWidget {
  const RadialGradientContainer({
    Key? key,
    this.width,
    this.height,
    this.startColor,
    this.endColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? startColor;
  final Color? endColor;

  @override
  State<RadialGradientContainer> createState() =>
      _RadialGradientContainerState();
}

class _RadialGradientContainerState extends State<RadialGradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.5,
          colors: [
            widget.startColor!,
            widget.endColor!,
          ],
          stops: [0.0, 0.8],
        ),
      ),
    );
  }
}
