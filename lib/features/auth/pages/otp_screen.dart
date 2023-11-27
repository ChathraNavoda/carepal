import 'package:carepal/common/utils/constants.dart';
import 'package:carepal/common/widgets/appStyle.dart';
import 'package:carepal/common/widgets/height_spacer.dart';
import 'package:carepal/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              HeightSpacer(
                height: AppConst.kHeight * 0.15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset(
                  "assets/images/login2.png",
                  width: AppConst.kWidth * 0.5,
                ),
              ),
              const HeightSpacer(height: 26),
              ReusableText(
                text: "Enter your OTP",
                style: appStyle(18, AppConst.kLight, FontWeight.bold),
              ),
              const HeightSpacer(height: 26),
               Pinput(
                length: 6,
                showCursor: true,
                onCompleted: (value) {
                  if(value.length ==6){

                  }

                },
                onSubmitted: (value) {
                   if (value.length == 6) {}
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
