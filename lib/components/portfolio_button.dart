import 'package:doddy_rn/components/custom_page_route.dart';
import 'package:doddy_rn/screens/portfolio_page.dart';
import 'package:flutter/material.dart';

class PortFolioButton extends StatelessWidget {
  const PortFolioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, CustomPageRoute(PortfolioPage()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Hero(
                tag: 'portfolioBg',
                child: Container(
                  color: Theme.of(context).accentColor,
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.width / 1.7,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Hero(
                  tag: 'portfolioText',
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text(
                      'Portfolio',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                child: Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width / 3,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
