import 'package:carepal/common/utils/constants.dart';
import 'package:carepal/common/widgets/appStyle.dart';
import 'package:carepal/common/widgets/custom_outline_btn.dart';
import 'package:carepal/common/widgets/height_spacer.dart';
import 'package:carepal/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Image.asset("assets/images/login2.png"),
              ),
              const HeightSpacer(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16.w),
                child: ReusableText(
                  text: "Please Enter Your Phone Number",
                  style: appStyle(17, AppConst.kLight, FontWeight.w500),
                ),
              ),
              const HeightSpacer(height: 20),
              const Center(
                  // child: CustomTextField(),
                  ),
              const HeightSpacer(height: 20),
              CustomOutlineBtn(
                  width: AppConst.kWidth * 0.9,
                  height: AppConst.kHeight * 0.07,
                  color: AppConst.kBkDark,
                  color2: AppConst.kLight,
                  text: "Send Code"),
            ],
          ),
        ),
      ),
    );
  }
}
