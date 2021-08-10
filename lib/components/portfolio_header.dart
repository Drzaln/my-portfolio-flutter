import 'package:doddy_rn/animations/fade.dart';
import 'package:doddy_rn/animations/slide_fade.dart';
import 'package:doddy_rn/presentation/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Fade(
              child: Icon(
                CustomIcons.arrow_back,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Hero(
              tag: 'portfolioText',
              child: Material(
                type: MaterialType.transparency,
                child: Text(
                  'Work',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
