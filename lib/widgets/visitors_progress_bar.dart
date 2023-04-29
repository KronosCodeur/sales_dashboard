import 'package:flutter/material.dart';

class VisitorProgressBar extends StatelessWidget {
  VisitorProgressBar({Key? key, required this.progressValue}) : super(key: key);
  final double progressValue;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      clipBehavior: Clip.hardEdge,
      child: LinearProgressIndicator(
        value: progressValue,
        minHeight: 10,
        backgroundColor: Color(0xff1E1828),
        valueColor: AlwaysStoppedAnimation<Color>(
          Color(0xff845ED7),
        ),
      ),
    );
  }
}
