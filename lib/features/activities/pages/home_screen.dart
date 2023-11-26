import 'package:carepal/common/utils/constants.dart';
import 'package:carepal/common/widgets/appStyle.dart';
import 'package:carepal/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ReusableText(
          text: "CarePal Health Tracker",
          style: appStyle(25, AppConst.kBlueLight, FontWeight.bold),
        ),
      ),
    );
  }
}
