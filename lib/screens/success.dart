import 'dart:async';

import 'package:bloodlink_app/constrins.dart';
import 'package:bloodlink_app/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => DashboardScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Image.asset("assets/images/success.png"),
      ),
    );
  }
}
