import 'package:doddy_rn/animations/slide_fade.dart';
import 'package:doddy_rn/components/center_timeline_item.dart';
import 'package:doddy_rn/components/square_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_modal.dart';

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
              SlideFade(
                direction: Direction.horizontal,
                child: Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width / 1.7,
                  color: Theme.of(context).accentColor,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 5),
                ),
              )
            ],
          ),
          SlideFade(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    SquareButton(
                      title: 'Skills',
                      onPressed: () {
                        showModalBottomSheet(
                            barrierColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) => CustomModal(
                                  title: 'Skills',
                                  child: (_, controller) => ListView(
                                    shrinkWrap: true,
                                    controller: controller,
                                    children: [
                                      CenterTimeLineItem(
                                        text: 'React Native',
                                        placement: Placement.start,
                                        position: Position.left,
                                      ),
                                      CenterTimeLineItem(
                                        text: 'React Context',
                                        position: Position.right,
                                      ),
                                      CenterTimeLineItem(
                                        text: 'Javascript',
                                        position: Position.left,
                                      ),
                                      CenterTimeLineItem(
                                        text: 'Redux',
                                        position: Position.right,
                                      ),
                                      CenterTimeLineItem(
                                        text: 'Flutter',
                                        position: Position.left,
                                      ),
                                      CenterTimeLineItem(
                                        text: 'Git',
                                        position: Position.right,
                                        placement: Placement.end,
                                      ),
                                    ],
                                  ),
                                ));
                      },
                    ),
                    SquareButton(
                      title: 'Experience',
                      onPressed: () {
                        showModalBottomSheet(
                            barrierColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) => CustomModal(
                                title: 'Experience',
                                child: (_, controller) => DefaultTabController(
                                    length: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          child: TabBar(
                                            labelColor: Theme.of(context).primaryColor,
                                            unselectedLabelColor: Color(0xFF6F6F6F),
                                            labelStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 19)),
                                            indicatorColor: Theme.of(context).primaryColor,
                                            indicatorPadding: EdgeInsets.symmetric(horizontal: 65),
                                            tabs: [
                                              Tab(
                                                text: 'Work',
                                              ),
                                              Tab(text: 'Talk')
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            child: TabBarView(
                                          children: [
                                              ListView(
                                              shrinkWrap: true,
                                              controller: controller,
                                              children: [
                                                CenterTimeLineItem(
                                                  text: 'React Native',
                                                  placement: Placement.start,
                                                  position: Position.left,
                                                ),
                                                CenterTimeLineItem(
                                                  text: 'React Context',
                                                  position: Position.right,
                                                ),
                                                CenterTimeLineItem(
                                                  text: 'Javascript',
                                                  position: Position.left,
                                                ),
                                                CenterTimeLineItem(
                                                  text: 'Redux',
                                                  position: Position.right,
                                                ),
                                                CenterTimeLineItem(
                                                  text: 'Flutter',
                                                  position: Position.left,
                                                ),
                                                CenterTimeLineItem(
                                                  text: 'Git',
                                                  position: Position.right,
                                                  placement: Placement.end,
                                                ),
                                              ],
                                            ),
                                            ListView(
                                              shrinkWrap: true,
                                              controller: controller,
                                              children: [
                                                CenterTimeLineItem(
                                                  text: 'React Native',
                                                  placement: Placement.start,
                                                  position: Position.left,
                                                ),
                                                CenterTimeLineItem(
                                                  text: 'React Context',
                                                  position: Position.right,
                                                ),
                                                CenterTimeLineItem(
                                                  text: 'Javascript',
                                                  position: Position.left,
                                                ),
                                                CenterTimeLineItem(
                                                  text: 'Redux',
                                                  position: Position.right,
                                                ),
                                                CenterTimeLineItem(
                                                  text: 'Flutter',
                                                  position: Position.left,
                                                ),
                                                CenterTimeLineItem(
                                                  text: 'Git',
                                                  position: Position.right,
                                                  placement: Placement.end,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ))
                                      ],
                                    ))));
                      },
                    ),
                    SquareButton(
                      title: 'Education',
                      last: true,
                      onPressed: () {
                        showModalBottomSheet(
                            barrierColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) => CustomModal(
                                  title: 'Education',
                                  child: (_, controller) => ListView(
                                    shrinkWrap: true,
                                    controller: controller,
                                    children: [
                                      CenterTimeLineItem(
                                        text: 'React Native',
                                        placement: Placement.start,
                                        position: Position.left,
                                      ),
                                      CenterTimeLineItem(
                                        text: 'React Context',
                                        position: Position.right,
                                      ),
                                      CenterTimeLineItem(
                                        text: 'Javascript',
                                        position: Position.left,
                                      ),
                                      CenterTimeLineItem(
                                        text: 'Redux',
                                        position: Position.right,
                                      ),
                                      CenterTimeLineItem(
                                        text: 'Flutter',
                                        position: Position.left,
                                      ),
                                      CenterTimeLineItem(
                                        text: 'Git',
                                        position: Position.right,
                                        placement: Placement.end,
                                      ),
                                    ],
                                  ),
                                ));
                      },
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }

  // Widget makeDismissible({required Widget child}) => GestureDetector(
  //   behavior: HitTestBehavior.opaque,
  //   onTap: () => Navigator.of(context).pop(),
  //   child: GestureDetector(onTap: (){}, child: child,),
  // );
}
