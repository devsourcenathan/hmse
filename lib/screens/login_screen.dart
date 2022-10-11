import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infyhms_flutter/component/common_button.dart';
import 'package:infyhms_flutter/component/common_text_field.dart';
import 'package:infyhms_flutter/constant/color_const.dart';
import 'package:infyhms_flutter/constant/text_style_const.dart';
import 'package:infyhms_flutter/screens/forgot_password_screen.dart';
import 'package:infyhms_flutter/utils/image_utils.dart';
import 'package:infyhms_flutter/utils/string_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConst.whiteColor,
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: height / 3.2,
                  color: ColorConst.bgGreyColor,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageUtils.splashLogo),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    children: [
                      Container(
                        height: height / 3.2,
                        width: width,
                        color: ColorConst.bgGreyColor,
                      ),
                      Container(
                        height: height / 1.6,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorConst.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: ColorConst.greyShadowColor,
                              blurRadius: 5,
                              spreadRadius: 3,
                              offset: const Offset(0, -5),
                            ),
                          ],
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(60),
                            topLeft: Radius.circular(60),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: height * 0.06, left: 20, right: 20),
                          child: Column(
                            children: [
                              Text(StringUtils.signIn, style: TextStyleConst.boldTextStyle),
                              SizedBox(height: height * 0.03),
                              CommonTextField(
                                hintText: StringUtils.signInEmail,
                              ),
                              SizedBox(height: height * 0.02),
                              CommonTextField(
                                hintText: StringUtils.signInPassword,
                                suffixIcon: const Icon(
                                  Icons.remove_red_eye,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  child: Text(
                                    StringUtils.forgotPassword,
                                    style: TextStyleConst.forgotTextStyle,
                                  ),
                                  onPressed: () {
                                    Get.to(() => const ForgotPasswordScreen(), transition: Transition.rightToLeft);
                                  },
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: ColorConst.blueColor,
                                    ),
                                    child: const Icon(
                                      Icons.check,
                                      color: ColorConst.whiteColor,
                                      size: 18,
                                    ),
                                  ),
                                  SizedBox(width: width * 0.01),
                                  Text(
                                    StringUtils.rememberPassword,
                                    style: TextStyleConst.mediumTextStyle(ColorConst.blueColor),
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.06),
                              CommonButton(
                                textColor: Colors.white,
                                onTap: () {},
                                color: ColorConst.blueColor,
                                text: StringUtils.login,
                                width: width,
                                height: 50,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
