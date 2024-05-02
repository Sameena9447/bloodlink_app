import 'dart:developer';

import 'package:bloodlink_app/constants.dart';
import 'package:bloodlink_app/constrins.dart';
import 'package:bloodlink_app/screens/donateblood_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class BannerWidget2 extends StatefulWidget {
  @override
  State<BannerWidget2> createState() => _CarouselSliderWithDotsState();
}

class _CarouselSliderWithDotsState extends State<BannerWidget2> {
  late CarouselController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = CarouselController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: Colors.red,
              child: CarouselSlider(
                carouselController: controller,
                items: bannerlist2
                    .map(
                      (item) => Padding(
                          padding: const EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () {
                              if (bannerlist2[0] == item) {
                                log("emergence clicked");
                              } else if (bannerlist2[1] == item) {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return DonateBloodScreen();
                                  },
                                ));
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: primaryColor)),
                              child: item,
                            ),
                          )

                          //     ClipRRect(
                          //   borderRadius: BorderRadius.circular(10),
                          //   child: Image.asset(
                          //     item,
                          //     fit: BoxFit.fill,
                          //     width: double.maxFinite,
                          //   ),
                          // ),
                          ),
                    )
                    .toList(),
                options: CarouselOptions(
                  height: 180,
                  // enlargeCenterPage: true,
                  // enlargeFactor: 4,
                  enlargeCenterPage: true,
                  autoPlay: false,
                  pageSnapping: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            DotsIndicator(
              dotsCount: bannerlist2.length,
              position: currentIndex,
              onTap: (index) {
                controller.animateToPage(index);
              },
              decorator: DotsDecorator(
                color: secondprimaryColor2,
                activeColor: primaryColor,
                size: const Size.square(10.0),
                activeSize: const Size(40.0, 10.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        )));
  }
}
// ));
//   }
// }
