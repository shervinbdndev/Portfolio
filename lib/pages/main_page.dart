import 'package:flutter/material.dart';
import 'package:portfolio/colors/colors.dart';
import 'package:portfolio/widget/about_card.dart';
import 'package:portfolio/widget/menu_item.dart';

class PortfolioMainPage extends StatefulWidget {
  const PortfolioMainPage({Key? key}) : super(key: key);

  @override
  State<PortfolioMainPage> createState() => _PortfolioMainPageState();
}

class _PortfolioMainPageState extends State<PortfolioMainPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PhysicalModel(
        color: Colors.transparent,
        shape: BoxShape.rectangle,
        elevation: 30.0,
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(PortfolioColors.startBackgroundDark),
                Color(PortfolioColors.stopBackgroundDark),
              ],
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    right: 15.0,
                    bottom: 202.0,
                  ),
                  child: SizedBox(
                    width: 100,
                    height: 550,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: ExpansionTile(
                        title: const Text(''),
                        leading: const Icon(
                          Icons.menu,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        iconColor: Colors.white,
                        collapsedIconColor: const Color(PortfolioColors.orange),
                        backgroundColor: const Color(PortfolioColors.box),
                        children: <Widget>[
                          PortfolioMenuItem(
                            icon: Icons.person,
                            color: const Color(PortfolioColors.orange),
                            text: 'ABOUT',
                            ontap: () async {},
                          ),
                          PortfolioMenuItem(
                            icon: Icons.book,
                            color: Colors.white,
                            text: 'RESUME',
                            ontap: () async {},
                          ),
                          PortfolioMenuItem(
                            icon: Icons.work,
                            color: Colors.white,
                            text: 'WORKS',
                            ontap: () async {},
                          ),
                          PortfolioMenuItem(
                            icon: Icons.chat,
                            color: Colors.white,
                            text: 'BLOG',
                            ontap: () async {},
                          ),
                          PortfolioMenuItem(
                            icon: Icons.mobile_screen_share,
                            color: Colors.white,
                            text: 'CONTACT',
                            ontap: () async {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const PortfolioAboutCard(
                  wallpaper: 'assets/wallpaper.jpg',
                  personImage: 'assets/me.png',
                  nameFamily: 'Shervin Badanara',
                  job: 'Freelancer',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
