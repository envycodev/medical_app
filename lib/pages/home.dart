import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app/helpers/color.dart';
import 'package:medical_app/helpers/font.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 24, left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '👋 Hello!',
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'EnvyCode',
                        style: blackTextStyle.copyWith(
                          fontWeight: extraBold,
                          fontSize: 27,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/profile.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 24),
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/icon/search.png'),
                    width: 20,
                    height: 20,
                  ),
                  Flexible(
                      child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: blueSecondaryColor,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Search Medical ...',
                              hintStyle: blueGrayTextStyle.copyWith(
                                  fontSize: 12, fontWeight: regular)),
                          style: blackTextStyle)),
                  Image(
                    image: AssetImage('assets/icon/adjust.png'),
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: blueSecondaryColor,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 22, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'Services',
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 17,
                        ),
                      )),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(15),
                          child: Image(
                              width: 40,
                              height: 40,
                              image: AssetImage('assets/icon/doctor.png')),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: blueLightColor,
                          )),
                      Spacer(),
                      Container(
                          padding: EdgeInsets.all(15),
                          child: Image(
                              width: 40,
                              height: 40,
                              image: AssetImage('assets/icon/pill.png')),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: orangeLightColor,
                          )),
                      Spacer(),
                      Container(
                          padding: EdgeInsets.all(15),
                          child: Image(
                              width: 40,
                              height: 40,
                              image:
                                  AssetImage('assets/icon/medical-test.png')),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: blueLight2Color,
                          )),
                      Spacer(),
                      Container(
                          padding: EdgeInsets.all(15),
                          child: Image(
                              width: 40,
                              height: 40,
                              image: AssetImage('assets/icon/virus.png')),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: pinkLightColor,
                          ))
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              height: 170,
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: Container(
                          margin: EdgeInsets.only(left: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text('Get the Best Medical Service',
                                        style: blackDarkTextStyle.copyWith(
                                          fontWeight: bold,
                                          fontSize: 20,
                                        ))),
                                Text(
                                    'Lorem Ipsum is simply dummy text of the printing ',
                                    style: blueGray2TextStyle.copyWith(
                                      fontWeight: regular,
                                      fontSize: 11,
                                    ))
                              ]))),
                  Expanded(
                    flex: 4,
                    child: Container(),
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/image/doctor_card.png'),
                ),
                color: blueLightColor,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 22, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'Upcoming Appointments',
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 17,
                        ),
                      )),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 14, right: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: bluePrimaryColor,
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      child: Image(
                                          width: 20,
                                          height: 20,
                                          image: AssetImage(
                                              'assets/icon/more-horizontal.png')),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(26),
                                        color: whiteColor.withOpacity(0.14),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 20,
                                                bottom: 20,
                                                left: 20,
                                                right: 20),
                                            child: Column(
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 4),
                                                    child: Text(
                                                      "12",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                        fontWeight: extraBold,
                                                        fontSize: 22,
                                                      ),
                                                    )),
                                                Text(
                                                  "Tue",
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                    fontWeight: semiBold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 16, right: 32),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('09:30 AM',
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                    fontWeight: regular,
                                                    fontSize: 14,
                                                  )),
                                              Text('Dr. Mim Akhter',
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                    fontWeight: bold,
                                                    fontSize: 19,
                                                  )),
                                              Text('Depression',
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                    fontWeight: regular,
                                                    fontSize: 15,
                                                  )),
                                            ])),
                                  ],
                                ),
                              ],
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 14, right: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: orangeColor.withOpacity(0.18),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      child: ImageIcon(
                                        AssetImage(
                                            'assets/icon/more-horizontal.png'),
                                        color: blackColor,
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(26),
                                        color: orangeColor,
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 20,
                                                bottom: 20,
                                                left: 20,
                                                right: 20),
                                            child: Column(
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 4),
                                                    child: Text(
                                                      "12",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                        fontWeight: extraBold,
                                                        fontSize: 22,
                                                      ),
                                                    )),
                                                Text(
                                                  "Tue",
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                    fontWeight: semiBold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 16, right: 32),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('12:30 AM',
                                                  style: blackDarkTextStyle
                                                      .copyWith(
                                                    fontWeight: regular,
                                                    fontSize: 14,
                                                  )),
                                              Text('Dr. Mim Akhter',
                                                  style: blackDarkTextStyle
                                                      .copyWith(
                                                    fontWeight: bold,
                                                    fontSize: 19,
                                                  )),
                                              Text('Depression',
                                                  style: blackDarkTextStyle
                                                      .copyWith(
                                                    fontWeight: regular,
                                                    fontSize: 15,
                                                  )),
                                            ])),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 4),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Color(0xffB3B5C4),
          unselectedLabelStyle: blueGrayTextStyle.copyWith(fontSize: 12),
          selectedItemColor: bluePrimaryColor,
          selectedLabelStyle: blueTextStyle.copyWith(fontSize: 12),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(bottom: 8),
                child: ImageIcon(
                  AssetImage('assets/icon/home.png'),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(bottom: 8),
                child: ImageIcon(
                  AssetImage('assets/icon/schedule.png'),
                ),
              ),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(bottom: 8),
                child: ImageIcon(
                  AssetImage('assets/icon/report.png'),
                ),
              ),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(bottom: 8),
                child: ImageIcon(
                  AssetImage('assets/icon/notification.png'),
                ),
              ),
              label: 'Notifications',
            ),
          ],
        ),
      ),
    ));
  }
}
