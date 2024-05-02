import 'package:bloodlink_app/constrins.dart';
import 'package:bloodlink_app/screens/Authentication/signup_screen.dart';
import 'package:bloodlink_app/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  "Login",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                normal20sized,
                const Text(
                  "Welcome back !",
                  style: TextStyle(
                      color: secondprimaryColor1, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Enter your phone number and password",
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
                            hintText: 'Phone number',
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
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: secondprimaryColor1)),
                      ),
                    ),
                  ),
                ),
                // normal20sized,
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgote Password ?",
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )),
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
                        ' Login',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: backgroundColor),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return SignUpScreen();
                            },
                          ));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 12,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                normal20sized,
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        height: 1,
                        color: secondprimaryColor2,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    const Text("    or    "),
                    Flexible(
                      child: Container(
                        height: 1,
                        color: secondprimaryColor2,
                        width: MediaQuery.of(context).size.width,
                      ),
                    )
                  ],
                ),
                normal20sized,
                normal20sized,
                Container(
                  height: 52,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: primaryColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/google.png",
                        height: 35,
                        width: 35,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Countinue with Google",
                        style: TextStyle(
                            color: secondprimaryColor2,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                //       normal20sized,
                //       normal20sized,
                //        Container(
                // color: backgroundColor,
                // child: Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: const Text(
                //     "Terms of use and policy ",
                //     style: TextStyle(
                //         fontWeight: FontWeight.bold, color: secondprimaryColor1),
                //   ),
                // )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
