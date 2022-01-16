import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plants/components/constants.dart';

import 'components/scroll_view_plants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff235E8F),
      bottomNavigationBar: buildBottomNavyBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                color:const Color(0xffE7FAFF),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Container(
                  margin:const EdgeInsets.only(top: 340),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding:EdgeInsets.only(left: 25.0),
                              child: Text(
                                'Top Picks',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color(0xff2C3C49),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Sora'),
                              ),
                            ),
                            Container(
                              margin:const EdgeInsets.only(left:150.0),
                              height:40.0,
                              width:40.0,
                              decoration: BoxDecoration(
                                color:const Color(0xffCBF3FB),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon:const Icon(
                                  FontAwesomeIcons.random,
                                  size: 18,
                                  color: Color(0xff5FA7B4),
                                ),
                              ),
                            ),
                            Container(
                              margin:const EdgeInsets.only(right:30.0),
                              height:40.0,
                              width:40.0,
                              decoration: BoxDecoration(
                                color:const Color(0xffCBF3FB),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon:const Icon(
                                  FontAwesomeIcons.slidersH,
                                  size: 18,
                                  color: Color(0xff5FA7B4),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            padding:const EdgeInsets.symmetric(vertical:10.0),
                            child: buildScrollableView(),
                          ),
                        )
                      ],
                  ),
              ),
            ),
            Container(
              height: 200,
              width: 100,
              margin: const EdgeInsets.only(left: 10.0, top: 10.0),
              decoration: const BoxDecoration(
                  color: Color(0xffE7F6B2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                  )),
            ),
            Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:const Icon(FontAwesomeIcons.arrowLeft),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 270.0, top: 20.0),
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  color:const Color(0xffAFD2E0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon:const Icon(FontAwesomeIcons.search, size: 20.0),
                ),
              ),
            ]),
            Container(
              height: 225.0,
              width: 110.0,
              margin: const EdgeInsets.only(left: 35.0, top: 100.0),
              decoration: BoxDecoration(
                  color:const Color(0xffACEFFF),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            Column(children: [
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 15.0, top: 70.0),
                      height: 250,
                      child:const Image(image: AssetImage('images/Plant22.png'))),
                  Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const  Text('Need an expert', style: kMainScreenTextStyle),
                        const   Text(
                          'to take care your',
                          style: kMainScreenTextStyle,
                        ),
                        const  Text('Plants ?',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Color(0xff499790),
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.bold)),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary:const Color(0xffF6BE8D),
                              onPrimary: Colors.grey.shade200,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child:const Text('Call now'))
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }



  BottomNavyBar buildBottomNavyBar() {
    return BottomNavyBar(
      backgroundColor: const Color(0xff235E8F),
      selectedIndex: _currentIndex,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(FontAwesomeIcons.leaf),
          title: const Text('Plants', style: kTextStyle),
          activeColor: const Color(0xff45CACF),
          inactiveColor: const Color(0xffE7FAFF),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(FontAwesomeIcons.solidHeart),
          title: const Text('Favourite', style: kTextStyle),
          activeColor: const Color(0xff45CACF),
          inactiveColor: const Color(0xffE7FAFF),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(FontAwesomeIcons.shoppingBag),
          title: const Text('Shopping', style: kTextStyle),
          activeColor: const Color(0xff45CACF),
          inactiveColor: const Color(0xffE7FAFF),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(FontAwesomeIcons.userAlt),
          title: const Text('User', style: kTextStyle),
          activeColor: const Color(0xff45CACF),
          inactiveColor: const Color(0xffE7FAFF),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
