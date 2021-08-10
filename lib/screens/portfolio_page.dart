import 'dart:async';

import 'package:doddy_rn/animations/slide_fade_vertical.dart';
import 'package:doddy_rn/components/portfolio_header.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
            tag: 'portfolioBg',
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Theme.of(context).accentColor,
            )),
        SafeArea(
            child: Column(
          children: [
            PortfolioHeader(),
            Expanded(
                child: SlideFadeVertical(
              offset: 1,
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                shrinkWrap: true,
                children: [
                  ScrollItem(
                    image: 'lib/images/av.webp',
                    title: 'AntaVaya',
                  ),
                  ScrollItem(
                    image: 'lib/images/fb.webp',
                    title: 'Football',
                    isAlignStart: true,
                  ),
                  ScrollItem(
                    image: 'lib/images/hf.webp',
                    title: 'HacktoberFest 2020',
                  )
                ],
              ),
            ))
          ],
        ))
      ],
    ));
  }
}

class ScrollItem extends StatelessWidget {
  final String image;
  final String title;
  final bool? isAlignStart;
  const ScrollItem(
      {Key? key, required this.image, required this.title, this.isAlignStart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 85),
      child: Row(
        mainAxisAlignment: isAlignStart != null
            ? MainAxisAlignment.start
            : MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Container(
                  width: 360,
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                height: 12,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 19),
              ),
              Container(
                height: 2,
                color: Theme.of(context).primaryColor,
                width: 60,
              )
            ],
          )
        ],
      ),
    );
  }
}