import 'package:doddy_rn/components/square_button.dart';
import 'package:flutter/material.dart';

class SquareItemScroll extends StatelessWidget {
  const SquareItemScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width / 1.7,
                color: Theme.of(context).accentColor,
                margin:
                    EdgeInsets.only(top: MediaQuery.of(context).size.width / 5),
              )
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  SquareButton(
                    title: 'Skills',
                    onPressed: () => {},
                  ),
                  SquareButton(
                      title: 'Experience', onPressed: () => print('2')),
                  SquareButton(
                      title: 'Education',
                      last: true,
                      onPressed: () => print('3')),
                ],
              ))
        ],
      ),
    );
  }
}
