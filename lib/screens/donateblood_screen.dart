import 'package:bloodlink_app/constants.dart';
import 'package:bloodlink_app/constrins.dart';
import 'package:bloodlink_app/screens/hospital_info.dart';
import 'package:flutter/material.dart';

class DonateBloodScreen extends StatefulWidget {
  @override
  State<DonateBloodScreen> createState() => _DonateBloodScreenState();
}

class _DonateBloodScreenState extends State<DonateBloodScreen> {
  int? selectitem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        surfaceTintColor: backgroundColor,
        centerTitle: true,
        title: Text(
          "Donate Blood",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   height: 100,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       border: Border.all(color: secondprimaryColor2)),
              // ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Select your blood group",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: List.generate(
                      bloodgrps.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectitem = index;
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: selectitem == index
                                        ? primaryColor
                                        : Colors.transparent,
                                    border: Border.all(color: primaryColor)),
                                child: Center(
                                  child: Text(
                                    bloodgrps[index],
                                    style: TextStyle(
                                        color: selectitem == index
                                            ? backgroundColor
                                            : primaryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          )),
                ),
              ),
              normal20sized,
              Text(
                "Hospital near you",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              normal20sized,
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
              normal20sized,
              Column(
                children: List.generate(
                  10,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return HospitalInfoScreen();
                          },
                        ));
                      },
                      child: Container(
                        // height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: secondprimaryColor2)),
                        child: IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    height: 70,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.amber,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/apollo.jpg"),
                                            fit: BoxFit.cover)),
                                  )),
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
                                        "Apollo Hospital",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: textcolor),
                                      ),
                                      Text(
                                        "Near arya road,NH66",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: secondprimaryColor1),
                                      ),
                                      Text(
                                        "Open 24 hr",
                                        style: TextStyle(
                                            color: secondprimaryColor1),
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
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
