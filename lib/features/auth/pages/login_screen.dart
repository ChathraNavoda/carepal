import 'package:carepal/common/utils/constants.dart';
import 'package:carepal/common/widgets/appStyle.dart';
import 'package:carepal/common/widgets/custom_outline_btn.dart';
import 'package:carepal/common/widgets/custom_text.dart';
import 'package:carepal/common/widgets/height_spacer.dart';
import 'package:carepal/common/widgets/reusable_text.dart';
import 'package:carepal/features/auth/pages/otp_screen.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController phone = TextEditingController();

  Country country = Country(
    phoneCode: "1",
    countryCode: "US",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "USA",
    example: "USA",
    displayName: "United States",
    displayNameNoCountryCode: "US",
    e164Key: "",
  );

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
              Center(
                child: CustomTextField(
                  controller: phone,
                  prefixIcon: SizedBox(
                    width: AppConst.kWidth * 0.2,
                    height: AppConst.kHeight * 0.02,
                    child: Container(
                      padding: const EdgeInsets.all(9),
                      child: GestureDetector(
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              countryListTheme: CountryListThemeData(
                                  backgroundColor: AppConst.kLight,
                                  bottomSheetHeight: AppConst.kHeight * 0.6,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(AppConst.kRadius),
                                    topRight: Radius.circular(AppConst.kRadius),
                                  )),
                              onSelect: (code) {
                                setState(() {});
                              });
                        },
                        child: ReusableText(
                          text: "${country.flagEmoji} + ${country.phoneCode}",
                          style:
                              appStyle(18, AppConst.kBkDark, FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  hintText: "Enter your phone number",
                  hintStyle: appStyle(16, AppConst.kBkDark, FontWeight.w600),
                ),
              ),
              const HeightSpacer(height: 20),
              CustomOutlineBtn(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OTPScreen(),
                    ),
                  );
                },
                width: AppConst.kWidth * 0.9,
                height: AppConst.kHeight * 0.07,
                color: AppConst.kBkDark,
                color2: AppConst.kLight,
                text: "Send Code",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
