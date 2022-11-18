import 'package:flutter/material.dart';
import 'package:portfolio/colors/colors.dart';

class PortfolioAboutCard extends StatelessWidget {
  final String wallpaper;
  final String personImage;
  final String nameFamily;
  final String job;

  const PortfolioAboutCard({
    Key? key,
    required this.wallpaper,
    required this.personImage,
    required this.nameFamily,
    required this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550,
      height: 750,
      decoration: BoxDecoration(
        color: const Color(PortfolioColors.box),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                Container(
                  width: 550,
                  height: 750 / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(250.0),
                      bottomRight: Radius.circular(250.0),
                    ),
                    child: Image.asset(
                      wallpaper,
                      fit: BoxFit.cover,
                      width: 550,
                      height: 750 / 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        nameFamily,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 40.0,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Text(
                        job,
                        style: const TextStyle(
                          color: Color(PortfolioColors.orange),
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50.0),
                              onTap: () async {},
                              child: const Icon(
                                Icons.sports_basketball,
                                color: Colors.grey,
                                size: 25.0,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50.0),
                              onTap: () async {},
                              child: const Icon(
                                Icons.telegram,
                                color: Colors.grey,
                                size: 25.0,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50.0),
                              onTap: () async {},
                              child: const Icon(
                                Icons.personal_video_rounded,
                                color: Colors.grey,
                                size: 25.0,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50.0),
                              onTap: () async {},
                              child: const Icon(
                                Icons.access_time_outlined,
                                color: Colors.grey,
                                size: 25.0,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50.0),
                              onTap: () async {},
                              child: const Icon(
                                Icons.account_circle_outlined,
                                color: Colors.grey,
                                size: 25.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 35.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 549 / 2,
                            height: 113.8,
                            decoration: BoxDecoration(
                              color: const Color(PortfolioColors.box),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              border: Border.all(
                                width: 1.0,
                                color: Colors.white.withOpacity(
                                  0.2,
                                ),
                              ),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () async {},
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const <Widget>[
                                      Text(
                                        'DOWNLOAD CV',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      Icon(
                                        Icons.download_rounded,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 549 / 2,
                            height: 113.8,
                            decoration: BoxDecoration(
                              color: const Color(PortfolioColors.box),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              border: Border.all(
                                width: 1.0,
                                color: Colors.white.withOpacity(
                                  0.2,
                                ),
                              ),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () async {},
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const <Widget>[
                                      Text(
                                        'CONTACT ME',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      Icon(
                                        Icons.send,
                                        size: 20.0,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 260,
                left: 180,
              ),
              child: PhysicalModel(
                color: Colors.transparent,
                elevation: 30.0,
                shape: BoxShape.circle,
                child: CircleAvatar(
                  radius: 88,
                  backgroundColor: const Color(PortfolioColors.box),
                  child: Image.asset(personImage),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
