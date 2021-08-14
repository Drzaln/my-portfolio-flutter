import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String title;
  final bool? last;
  final GestureTapCallback onPressed;
  const SquareButton({Key? key, required this.title, this.last, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: MediaQuery.of(context).size.width / 2.5,
        width: MediaQuery.of(context).size.width / 2.5,
        color: Theme.of(context).accentColor,
        margin: EdgeInsets.only(right: last!=null ? 0 : 20),
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.all(20),
        child: Text(
          title,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 21,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
