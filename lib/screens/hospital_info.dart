import 'package:bloodlink_app/constrins.dart';
import 'package:bloodlink_app/screens/success.dart';
import 'package:flutter/material.dart';

class HospitalInfoScreen extends StatelessWidget {
  const HospitalInfoScreen({super.key});

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
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Apollo Hospital",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: textcolor),
              ),
              Text(
                "Near arya road, NH66, Chennai",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: secondprimaryColor1),
              ),
              Text(
                "Open 24 hr",
                style: TextStyle(color: secondprimaryColor1),
              ),
              normal20sized,
              Text(
                "Directions",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              normal10sized,
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/map2.jpg"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber),
                ),
              ),
              normal20sized,
              Container(
                  height: 55,
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Distance",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              normal10sized,
                              Text("1 km")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        color: secondprimaryColor2,
                      ),
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Distance",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              normal10sized,
                              Text("10 min")
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              normal20sized,
              normal10sized,
              Text(
                "Select your date and time",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              normal20sized,
              Row(
                children: [
                  Flexible(
                    child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: containercolor),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("2/04/2024 "),
                            Icon(
                              Icons.calendar_month,
                              color: secondprimaryColor1,
                            )
                          ],
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: containercolor),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("12.00 am "),
                            Icon(
                              Icons.timer_sharp,
                              color: secondprimaryColor1,
                            )
                          ],
                        )),
                  ),
                ],
              ),
              normal20sized,
              normal20sized,
              SizedBox(
                height: 52,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SuccessPage();
                        },
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          // side: BorderSide(color: Colors.red),
                        ),
                        backgroundColor: primaryColor),
                    child: const Text(
                      'Book Appointment',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: backgroundColor),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
