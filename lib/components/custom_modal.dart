import 'package:doddy_rn/presentation/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class CustomModal extends StatelessWidget {
  final ScrollableWidgetBuilder child;
  final String title;
  const CustomModal({Key? key, required this.child, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MakeDismissible(
      child: DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.69,
        maxChildSize: 0.7,
        builder: (_, controller) => Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 34),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      child: child(context, controller)),
                ),
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      CustomIcons.close,
                      color: Theme.of(context).primaryColor,
                      size: 38,
                    ))
              ],
            )),
      ),
    );
  }
}

class MakeDismissible extends StatelessWidget {
  final Widget child;
  const MakeDismissible({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: child,
      ),
    );
  }
}
