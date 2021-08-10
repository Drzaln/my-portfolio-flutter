import 'package:flutter/material.dart';

enum Position { right, left }
enum Placement { start, end }

class CenterTimeLineItem extends StatelessWidget {
  final Position position;
  final Placement? placement;
  final String text;
  const CenterTimeLineItem(
      {Key? key, required this.position, this.placement, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.centerRight,
            child: position == Position.left
                ? Text(
              text,
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 19),
            )
                : null,
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    height: 20,
                    width: 2,
                    color: placement == Placement.start
                        ? Theme.of(context).accentColor
                        : Theme.of(context).primaryColor,
                  ),
                  Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: placement == Placement.end
                        ? Theme.of(context).accentColor
                        : Theme.of(context).primaryColor,
                  ),
                ],
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.centerLeft,
              child: position == Position.right
                  ? Text(
                text,
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 19),
              )
                  : null,
            ))
      ],
    );
  }
}
