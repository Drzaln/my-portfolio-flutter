import 'package:doddy_rn/animations/slide_fade.dart';
import 'package:doddy_rn/components/center_timeline_item.dart';
import 'package:doddy_rn/components/square_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_modal.dart';
import 'left_timeline_item.dart';

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
                delayStart: Duration(milliseconds: 400),
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
            delayStart: Duration(milliseconds: 700),
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
                                      SlideFade(
                                        child: CenterTimeLineItem(
                                          text: 'React Native',
                                          placement: Placement.start,
                                          position: Position.left,
                                        ),
                                      ),
                                      SlideFade(
                                        child: CenterTimeLineItem(
                                          text: 'React Context',
                                          position: Position.right,
                                        ),
                                      ),
                                      SlideFade(
                                        child: CenterTimeLineItem(
                                          text: 'Javascript',
                                          position: Position.left,
                                        ),
                                      ),
                                      SlideFade(
                                        child: CenterTimeLineItem(
                                          text: 'Redux',
                                          position: Position.right,
                                        ),
                                      ),
                                      SlideFade(
                                        child: CenterTimeLineItem(
                                          text: 'Flutter',
                                          position: Position.left,
                                        ),
                                      ),
                                      SlideFade(
                                        child: CenterTimeLineItem(
                                          text: 'Git',
                                          position: Position.right,
                                          placement: Placement.end,
                                        ),
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
                                            labelColor:
                                                Theme.of(context).primaryColor,
                                            unselectedLabelColor:
                                                Color(0xFF6F6F6F),
                                            labelStyle: GoogleFonts.poppins(
                                                textStyle:
                                                    TextStyle(fontSize: 19)),
                                            indicatorColor:
                                                Theme.of(context).primaryColor,
                                            indicatorPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 65),
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
                                                SlideFade(
                                                    child: LeftTimelineItem(
                                                  title: 'Geek-La',
                                                  date: 'May 2021 - Current',
                                                  desc:
                                                      'React Native Developer',
                                                  placement: Place.start,
                                                )),
                                                SlideFade(
                                                    child: LeftTimelineItem(
                                                        title:
                                                            'AntaVaya Tour & Travel',
                                                        date:
                                                            'Oct 2019 - May 2021',
                                                        desc:
                                                            'Frontend Developer',
                                                        placement: Place.end))
                                              ],
                                            ),
                                            ListView(
                                              shrinkWrap: true,
                                              controller: controller,
                                              children: [
                                                SlideFade(
                                                    child: LeftTimelineItem(
                                                  title:
                                                      'Learn the Basic: React Native',
                                                  date: '27 Feb 2021',
                                                  desc: 'GDSC UNNES',
                                                  placement: Place.end,
                                                )),
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
                                      SlideFade(
                                          child: LeftTimelineItem(
                                        title: 'Arkademy Tech Edu',
                                        desc: 'Fullstack Developer',
                                        placement: Place.end,
                                      )),
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
