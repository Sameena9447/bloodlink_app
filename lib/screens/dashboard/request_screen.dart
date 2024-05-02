import 'package:bloodlink_app/constants.dart';
import 'package:bloodlink_app/constrins.dart';
import 'package:flutter/material.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        surfaceTintColor: backgroundColor,
        centerTitle: true,
        title: Text(
          "Requests",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: secondprimaryColor2)),
              child: Row(children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search,
                  color: secondprimaryColor2,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Search")
              ]),
            ),
            normal20sized,
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                    10,
                    (index) => Padding(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                        )),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
