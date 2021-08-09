import 'package:doddy_rn/presentation/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Image(image: AssetImage('lib/images/profile.png'), height: 75,),
          SizedBox(
            width: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, I'm Doddy!",
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Opacity(
                  opacity: 0.6,
                  child: Row(
                    children: [
                      Icon(
                        CustomIcons.mail_outline,
                        color: Theme.of(context).accentColor,
                        size: 20,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'doddyrizaln@gmail.com',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
