import 'package:carepal/common/utils/constants.dart';
import 'package:carepal/common/widgets/custom_outline_btn.dart';
import 'package:carepal/common/widgets/height_spacer.dart';
import 'package:carepal/features/auth/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHeight,
      width: AppConst.kWidth,
      color: AppConst.kBkDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Image.asset("assets/images/login.png"),
          ),
          const HeightSpacer(height: 30),
          CustomOutlineBtn(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              width: AppConst.kWidth * 0.9,
              height: AppConst.kHeight * 0.06,
              color: AppConst.kLight,
              text: "Login with a phone number")
        ],
      ),
    );
  }
}
