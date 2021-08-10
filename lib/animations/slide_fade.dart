import 'dart:async';

import 'package:flutter/material.dart';

enum Direction { vertical, horizontal }

class SlideFade extends StatefulWidget {
  final Widget child;
  final double? offset;
  final Curve? curve;
  final Duration? delayStart;
  final Duration? animationDuration;
  final Direction? direction;

  SlideFade(
      {Key? key,
      required this.child,
      this.offset = 0.2,
      this.curve = Curves.easeIn,
      this.direction = Direction.vertical,
      this.delayStart = const Duration(seconds: 0),
      this.animationDuration = const Duration(milliseconds: 800)})
      : super(key: key);

  @override
  _SlideFadeState createState() => _SlideFadeState();
}

class _SlideFadeState extends State<SlideFade>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animationFade;
  late Animation<Offset> _animationSlide;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _animationFade = Tween<double>(begin: -1.0, end: 1.0).animate(
        _animationController
            .drive(CurveTween(curve: widget.curve ?? Curves.easeIn)));

    _animationSlide = widget.direction == Direction.vertical
        ? Tween<Offset>(
                begin: Offset(0, widget.offset ?? 0.2), end: Offset(0, 0))
            .animate(_animationController
                .drive(CurveTween(curve: widget.curve ?? Curves.easeIn)))
        : Tween<Offset>(
                begin: Offset(widget.offset ?? 0.2, 0), end: Offset(0, 0))
            .animate(_animationController
                .drive(CurveTween(curve: widget.curve ?? Curves.easeIn)));

    Timer(widget.delayStart ?? const Duration(seconds: 0), () {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationFade,
      child: SlideTransition(
        position: _animationSlide,
        child: widget.child,
      ),
    );
  }
}
