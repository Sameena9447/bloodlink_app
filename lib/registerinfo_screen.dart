import 'package:bloodlink_app/constrins.dart';
import 'package:bloodlink_app/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class RegisterInfoScreen extends StatelessWidget {
  const RegisterInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Your Information",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                normal20sized,
                const Text(
                  "Enter your personal details and complete",
                  style: TextStyle(
                      color: secondprimaryColor1, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "create your account",
                  style: TextStyle(
                    color: secondprimaryColor1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                normal20sized,
                normal20sized,
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: containercolor),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 5),
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: secondprimaryColor1)),
                      ),
                    ),
                  ),
                ),
                normal10sized,
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: containercolor),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 5),
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                            hintText: 'Address',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: secondprimaryColor1)),
                      ),
                    ),
                  ),
                ),
                normal10sized,
                Row(
                  children: [
                    Flexible(
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: containercolor),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("City "),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
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
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: containercolor),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("State "),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: secondprimaryColor1,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                normal10sized,
                Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: containercolor),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Blood Group "),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: secondprimaryColor1,
                          )
                        ],
                      ),
                    )),
                normal10sized,
                Row(
                  children: [
                    Flexible(
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: containercolor),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Age "),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
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
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: containercolor),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Gender "),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: secondprimaryColor1,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                normal10sized,
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: containercolor),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 5),
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                            hintText: 'If any medical condition',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: secondprimaryColor1)),
                      ),
                    ),
                  ),
                ),
                normal10sized,
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: containercolor),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 5),
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                            hintText: 'Aadhar number',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: secondprimaryColor1)),
                      ),
                    ),
                  ),
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
                            return DashboardScreen();
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
                        'Submit',
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
      ),
    );
  }
}
