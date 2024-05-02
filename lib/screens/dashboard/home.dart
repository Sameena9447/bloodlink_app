import 'package:bloodlink_app/constants.dart';
import 'package:bloodlink_app/constrins.dart';
import 'package:bloodlink_app/widgets/banner.dart';
import 'package:bloodlink_app/widgets/banner_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          elevation: 0,
          surfaceTintColor: backgroundColor,
          backgroundColor: backgroundColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primaryColor,
                ),
                child: const Center(
                  child: Text(
                    "B+",
                    style: TextStyle(
                        fontSize: 15,
                        color: backgroundColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User name",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Location",
                      style:
                          TextStyle(fontSize: 14, color: secondprimaryColor1),
                    )
                  ])
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                  child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: const Offset(
                        1,
                        1,
                      ),
                    )
                  ],
                ),
                child: const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.notifications_none,
                    size: 20,
                    color: secondprimaryColor1,
                  ),
                ),
              )),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // normal10sized,
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  height: 200,
                  // color: Colors.amber,
                  child: BannerWidget(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "What do you looking for?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width,
                // color: Colors.amber,
                child: BannerWidget2(),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Resend Requests",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See all",
                          style: TextStyle(color: primaryColor),
                        ))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Column(
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: secondprimaryColor2)),
                        child: IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: primaryColor,
                                  radius: 20,
                                  child: Center(
                                    child: Text(
                                      "A+",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Flexible(
                                child: SizedBox(
                                  // color: Colors.amber,
                                  width: MediaQuery.of(context).size.width,
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Reetha Rani",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: textcolor),
                                      ),
                                      Text(
                                        "Max hospital, Malappuram",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: secondprimaryColor1),
                                      ),
                                      Text(
                                        "12.00 am",
                                        style: TextStyle(
                                            color: secondprimaryColor1),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  donate_bottomsheet(context);
                                },
                                child: Container(
                                  width: 80,
                                  decoration: const BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  child: const Center(
                                    child: Text(
                                      "Donate Now",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ));
  }
}
