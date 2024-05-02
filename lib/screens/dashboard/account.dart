import 'package:bloodlink_app/constrins.dart';
import 'package:bloodlink_app/screens/Authentication/login.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              normal20sized,
              normal20sized,
              SizedBox(
                height: 100,
                // color: Colors.amber,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        "assets/images/profile.jpg",
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Flexible(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Suhana Yaman",
                              style: TextStyle(
                                  color: textcolor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "+919876543210",
                              style: TextStyle(
                                  fontSize: 12, color: secondprimaryColor1),
                            )
                          ],
                        ),
                      ),
                    ),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 20),
                child: Container(
                  height: 1,
                  color: secondprimaryColor2,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text("My Profile"),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ),
              normal10sized,
              const ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Address"),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ),
              normal10sized,
              const ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notification"),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ),
              normal10sized,
              const ListTile(
                leading: Icon(Icons.lock),
                title: Text("Password"),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ),
              normal10sized,
              const ListTile(
                leading: Icon(Icons.help),
                title: Text("Help Center"),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ),
              normal10sized,
              const ListTile(
                leading: Icon(Icons.file_copy),
                title: Text("Terms and conditions"),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 20),
                child: Container(
                  height: 1,
                  color: secondprimaryColor2,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.power_settings_new_rounded,
                  color: primaryColor,
                ),
                title: const Text(
                  "Logout",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: primaryColor),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: backgroundColor,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                "Log Out",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              normal20sized,
                              const Text("Are you sure want to log out ?"),
                              normal20sized,
                              normal10sized,
                              Row(
                                children: [
                                  Flexible(
                                      child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: primaryColor)),
                                      child: const Center(
                                        child: Text(
                                          "Cancel",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                      child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return const LoginScreen();
                                        },
                                      ));
                                    },
                                    child: Container(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: primaryColor),
                                      child: const Center(
                                        child: Text(
                                          "Log Out",
                                          style:
                                              TextStyle(color: backgroundColor),
                                        ),
                                      ),
                                    ),
                                  ))
                                ],
                              )
                            ],
                          ),
                        );
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
