import 'package:doddy_rn/animations/slide_fade.dart';
import 'package:doddy_rn/components/custom_app_bar.dart';
import 'package:doddy_rn/components/my_profile.dart';
import 'package:doddy_rn/components/portfolio_button.dart';
import 'package:doddy_rn/components/square_item_scroll.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          flexibleSpace: SlideFade(
            delayStart: Duration(milliseconds: 1000),
              offset: -0.2, child: Hero(tag: 'appbar', child: CustomAppBar()))),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SlideFade(delayStart: Duration(milliseconds: 1300),child: Hero(tag: 'profile', child: MyProfile())),
                SizedBox(
                  height: 50,
                ),
                SlideFade(
                    delayStart: Duration(milliseconds: 1600),
                    direction: Direction.horizontal, child: PortFolioButton()),
              ],
            ),
            SquareItemScroll()
          ],
        ),
      ),
    );
  }
}
