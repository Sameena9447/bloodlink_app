import 'package:bloodlink_app/constrins.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/nodata.jpg",
              height: 200,
            ),
            Text(
              "NO DATA",
              style: TextStyle(
                  color: secondprimaryColor1, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
