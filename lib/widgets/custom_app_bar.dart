import 'package:doddy_rn/presentation/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  static const _url = 'mailto:doddyrizaln@gmail.com?subject=Hiring&body=Hi%2C%20Doddy!%0A%0AWe%20are%20hiring';

  void _launchURL() async {
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

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
            onTap: _launchURL,
            child: Text(
              'Hire Me',
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
          ),
        ],
      ),
    );
  }
}
