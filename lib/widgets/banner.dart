import 'package:bloodlink_app/constants.dart';
import 'package:bloodlink_app/constrins.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  @override
  State<BannerWidget> createState() => _CarouselSliderWithDotsState();
}

class _CarouselSliderWithDotsState extends State<BannerWidget> {
  late CarouselController controller;
  int currentIndex = 0;
  // CommonViewModel? vm;
  @override
  void initState() {
    // vm = Provider.of<CommonViewModel>(context, listen: false);
    // vm!.getPopularPorducts();
    controller = CarouselController();

    super.initState();
  }

  // late Future<List<ProductViewmodel>> futureBanner;

  @override
  Widget build(BuildContext context) {
    // vm = Provider.of<CommonViewModel>(context, listen: false);
    return Scaffold(
        backgroundColor: backgroundColor,
        body:
            //  Consumer<CommonViewModel>(
            //     builder: (context, popularproduct, child) {
            //   if (popularproduct.popularproductload) {
            //     return const Center(child: Text("Loading .."));
            //   } else {
            // return
            Container(
                // height: 160,
                // color: Colors.amber,
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // vm!.popularproductload == true
            //     ? Text("Loading ...")
            //     :
            Container(
              child: CarouselSlider(
                carouselController: controller,
                items: bannerlist
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(5),
                        child:

                            // InkWell(
                            //   onTap: () {
                            //     // Navigator.push(context, MaterialPageRoute(
                            //     //   builder: (context) {
                            //     //     return ProductDetailsPage(
                            //     //       product: item.data,
                            //     //     );
                            //     //   },
                            //     // ));
                            //   },
                            //   child: Container(
                            //     height: 150,
                            //     width: MediaQuery.of(context).size.width /
                            //         1.1,
                            //     decoration: BoxDecoration(
                            //         borderRadius:
                            //             BorderRadius.circular(10),
                            //         color: primarycontainerColor),
                            //     child: Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: Row(
                            //         mainAxisAlignment:
                            //             MainAxisAlignment.spaceBetween,
                            //         children: [
                            //           Flexible(
                            //             child: SizedBox(
                            //               width: MediaQuery.of(context)
                            //                   .size
                            //                   .width,
                            //               // color: Colors.amber,
                            //               child: Image.network(
                            //                 ServiceApi().productimageurl +
                            //                     item.image!,
                            //                 // "assets/images/pomegranate.png",
                            //                 height: 120,
                            //                 // width: 200,
                            //               ),
                            //             ),
                            //           ),
                            //           const SizedBox(
                            //             width: 10,
                            //           ),
                            //           Flexible(
                            //             child: SizedBox(
                            //               width: MediaQuery.of(context)
                            //                   .size
                            //                   .width,
                            //               // color: Colors.blue,
                            //               child: Column(
                            //                 crossAxisAlignment:
                            //                     CrossAxisAlignment.start,
                            //                 mainAxisAlignment:
                            //                     MainAxisAlignment.center,
                            //                 children: [
                            //                   const SizedBox(
                            //                     height: 5,
                            //                   ),
                            //                   Text(
                            //                     item.productname!,
                            //                     // "Pomegranate",
                            //                     textAlign:
                            //                         TextAlign.start,
                            //                     maxLines: 2,
                            //                     overflow:
                            //                         TextOverflow.ellipsis,
                            //                     style: const TextStyle(
                            //                         fontWeight:
                            //                             FontWeight.bold,
                            //                         fontSize: 18),
                            //                   ),
                            //                   const SizedBox(
                            //                     height: 5,
                            //                   ),
                            //                   Text(
                            //                     item.description
                            //                         .toString(),
                            //                     // "A shrub or small tree growing 5 to 10 m (16 to 33 ft) high, the pomegranate has multiple spiny branches and is long-lived",
                            //                     textAlign:
                            //                         TextAlign.start,
                            //                     maxLines: 2,
                            //                     overflow:
                            //                         TextOverflow.ellipsis,
                            //                     style: const TextStyle(
                            //                         fontWeight:
                            //                             FontWeight.normal,
                            //                         fontSize: 12),
                            //                   ),
                            //                   const SizedBox(
                            //                     height: 10,
                            //                   ),
                            //                   Row(
                            //                     mainAxisAlignment:
                            //                         MainAxisAlignment
                            //                             .spaceBetween,
                            //                     children: [
                            //                       Text(
                            //                         item.normalprice
                            //                                 .toString() +
                            //                             " /-",
                            //                         style: TextStyle(
                            //                             fontWeight:
                            //                                 FontWeight
                            //                                     .bold,
                            //                             fontSize: 15,
                            //                             color: Colors
                            //                                 .green
                            //                                 .shade900),
                            //                       ),
                            //                       Padding(
                            //                         padding:
                            //                             const EdgeInsets
                            //                                 .only(
                            //                                 right: 5),
                            //                         child: InkWell(
                            //                             child: Container(
                            //                           decoration:
                            //                               BoxDecoration(
                            //                             shape: BoxShape
                            //                                 .circle,
                            //                             boxShadow: [
                            //                               BoxShadow(
                            //                                 color: Colors
                            //                                     .grey
                            //                                     .shade500,
                            //                                 blurRadius: 1,
                            //                                 spreadRadius:
                            //                                     1,
                            //                                 offset:
                            //                                     const Offset(
                            //                                   1,
                            //                                   1,
                            //                                 ),
                            //                               )
                            //                             ],
                            //                           ),
                            //                           child:
                            //                               const CircleAvatar(
                            //                             radius: 18,
                            //                             backgroundColor:
                            //                                 primaryButtonColor2,
                            //                             child: Icon(
                            //                               Icons.add,
                            //                               size: 15,
                            //                               color: Colors
                            //                                   .white,
                            //                             ),
                            //                           ),
                            //                         )),
                            //                       ),
                            //                     ],
                            //                   ),
                            //                 ],
                            //               ),
                            //             ),
                            //           )
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),

                            ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                            width: double.maxFinite,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  height: 170,
                  // enlargeCenterPage: true,
                  enlargeFactor: 4,
                  viewportFraction: 1,
                  autoPlay: true,
                  pageSnapping: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // DotsIndicator(
            //   dotsCount: bannerlist.length,
            //   position: currentIndex,
            //   onTap: (index) {
            //     controller.animateToPage(index);
            //   },
            //   decorator: DotsDecorator(
            //     color: secondprimaryColor2,
            //     activeColor: primaryColor,
            //     size: const Size.square(10.0),
            //     activeSize: const Size(40.0, 10.0),
            //     activeShape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(12.0),
            //     ),
            //   ),
            // ),
          ],
        )));
  }
}
// ));
//   }
// }
