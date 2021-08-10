import 'package:doddy_rn/presentation/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  String dropdownValue = 'English';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 20, right: 20),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Opacity(
            opacity: 0.6,
            child: Row(
              children: [
                Icon(
                  CustomIcons.location,
                  color: Theme.of(context).accentColor,
                  size: 17,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Indonesia',
                  style: TextStyle(color: Theme.of(context).accentColor),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Text(
              'Hire Me',
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
          )
          // DropdownButton<String>(
          //   value: dropdownValue,
          //   icon: Icon(
          //     CustomIcons.keyboard_arrow_down,
          //     color: Theme.of(context).accentColor,
          //     size: 17,
          //   ),
          //   iconSize: 17,
          //   underline: Container(
          //     height: 0,
          //   ),
          //   elevation: 1,
          //   dropdownColor: Theme.of(context).primaryColor,
          //   style: TextStyle(color: Theme.of(context).accentColor),
          //   onChanged: (String? newValue) {
          //     setState(() {
          //       dropdownValue = newValue!;
          //     });
          //   },
          //   items: <String>['English', 'Indonesia']
          //       .map<DropdownMenuItem<String>>((String value) {
          //     return DropdownMenuItem<String>(value: value, child: Text(value));
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}
