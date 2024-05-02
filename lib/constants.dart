import 'package:bloodlink_app/constrins.dart';
import 'package:bloodlink_app/screens/onboard/size_config.dart';
import 'package:flutter/material.dart';

List<String> bannerlist = [
  "assets/images/banner/banner1.jpg",
  "assets/images/banner/banner3.jpg",
  "assets/images/banner/banner22.jpg",
  "assets/images/banner/banner4.jpg",
  "assets/images/banner/banner44.jpg",
];
List<String> bloodgrps = ["A+", "A-", "AB+", "AB-", "B+", "B+", "O+", "O-"];
List<Widget> bannerlist2 = [
  Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Emergency",
          style: TextStyle(
              fontSize: 12, color: primaryColor, fontWeight: FontWeight.bold),
        ),
        normal20sized,
        Flexible(
          child: Container(
            height: 45,
            width: SizeConfig.screenW,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: secondprimaryColor2)),
            child: const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Locality",
                    style: TextStyle(color: secondprimaryColor1, fontSize: 12),
                  ),
                  Icon(
                    Icons.location_on_outlined,
                    color: secondprimaryColor2,
                  )
                ],
              ),
            ),
          ),
        ),
        normal10sized,
        Flexible(
          child: Container(
            height: 45,
            width: SizeConfig.screenW,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: secondprimaryColor2)),
            child: const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Blood Group",
                    style: TextStyle(color: secondprimaryColor1, fontSize: 12),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: secondprimaryColor2,
                  )
                ],
              ),
            ),
          ),
        ),
        normal10sized,
        Flexible(
          child: Container(
            height: 50,
            width: SizeConfig.screenW,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: primaryColor),
            child: const Center(
              child: Text(
                "Request",
                style: TextStyle(
                    color: backgroundColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
  SizedBox(
    width: SizeConfig.screenW,
    child: Padding(
      padding: const EdgeInsets.all(
        10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image.asset(
              "assets/images/donate2.png",
              height: 100,
            ),
          ),
          normal10sized,
          const Center(
            child: Text(
              "Donate Blood",
              style: TextStyle(
                  color: secondprimaryColor1, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
  ),
  SizedBox(
    width: SizeConfig.screenW,
    child: Padding(
      padding: const EdgeInsets.all(
        10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image.asset(
              "assets/images/request.png",
              height: 100,
            ),
          ),
          normal10sized,
          const Center(
            child: Text(
              "Donate Blood",
              style: TextStyle(
                  color: secondprimaryColor1, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
  ),
];

Future<dynamic> donate_bottomsheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      backgroundColor: backgroundColor,
      isScrollControlled: true,
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            normal20sized,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(
                  //     color:
                  //         secondprimaryColor2)
                ),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                style: TextStyle(color: secondprimaryColor1),
                              ),
                              Text(
                                "12.00 am",
                                style: TextStyle(color: secondprimaryColor1),
                              )
                            ],
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        child: const Center(
                            child: Icon(
                          Icons.call,
                          color: primaryColor,
                        )),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: secondprimaryColor2)),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Blood Group",
                            style: TextStyle(
                                color: textcolor, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "A+",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Amount Requered",
                            style: TextStyle(
                                color: textcolor, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2 liters",
                            style: TextStyle(
                                color: secondprimaryColor2,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Status",
                            style: TextStyle(
                                color: textcolor, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Urgent",
                            style: TextStyle(
                                color: secondprimaryColor2,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: secondprimaryColor2)),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                            color: textcolor, fontWeight: FontWeight.bold),
                      ),
                      normal10sized,
                      Text(
                          "Urgently requirement of 2 liters of A+ blood for a family member. I have anyone can help us as soon as possible. \nThank you")
                    ],
                  ),
                ),
              ),
            ),
            normal10sized,
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Direction",
                style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/location.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber),
              ),
            ),
            normal10sized,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 52,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) {
                      //     return DashboardScreen();
                      //   },
                      // ));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          // side: BorderSide(color: Colors.red),
                        ),
                        backgroundColor: primaryColor),
                    child: const Text(
                      'Donate',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: backgroundColor),
                    )),
              ),
            ),
          ],
        );
      });
}
