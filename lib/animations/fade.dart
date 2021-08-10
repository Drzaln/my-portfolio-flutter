import 'dart:async';

import 'package:flutter/material.dart';

class Fade extends StatefulWidget {
  final Widget child;
  final Curve? curve;
  final Duration? delayStart;
  final Duration? animationDuration;
  const Fade(
      {Key? key,
      required this.child,
      this.curve,
      this.delayStart,
      this.animationDuration})
      : super(key: key);

  @override
  _FadeState createState() => _FadeState();
}

class _FadeState extends State<Fade> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    Timer(widget.delayStart ?? const Duration(seconds: 0), () {
      controller.forward();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
        child: FadeTransition(opacity: animation, child: widget.child));
  }
}
