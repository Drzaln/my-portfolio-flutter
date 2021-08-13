import 'package:flutter/material.dart';

enum Place {start, end}
class LeftTimelineItem extends StatelessWidget {
  final String title;
  final String? date ;
  final String desc;
  final Place? placement;
  const LeftTimelineItem({Key? key, required this.title, this.date, required this.desc, this.placement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Row(
        children: [
          Expanded(flex: 1,child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(flex: 1,child: Container(color: placement==Place.start? Theme.of(context).accentColor: Theme.of(context).primaryColor,width: 2)),
              Container(width: 12,height: 12,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Theme.of(context).primaryColor,
              ),),
              Container(color: placement==Place.end? Theme.of(context).accentColor: Theme.of(context).primaryColor,width: 2,height: 32)
            ],
          )),
          Expanded(flex: 6,child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(date??'', style: TextStyle(color: Color(0xFF939393)),),
                SizedBox(height: 16,),
                Text(title, style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w600, fontSize: 19),),
                Text(desc, style: TextStyle(color: Color(0xFFB6B6B6), fontSize: 16),)
              ],
            ),
          )),
        ],
      ),
    );
  }
}
