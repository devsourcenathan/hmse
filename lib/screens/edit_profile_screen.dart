import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infyhms_flutter/component/common_app_bar.dart';
import 'package:infyhms_flutter/component/common_button.dart';
import 'package:infyhms_flutter/component/common_required_text.dart';
import 'package:infyhms_flutter/component/common_text_field.dart';
import 'package:infyhms_flutter/constant/color_const.dart';
import 'package:infyhms_flutter/constant/text_style_const.dart';
import 'package:infyhms_flutter/utils/string_utils.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConst.whiteColor,
        appBar: CommonAppBar(
          title: StringUtils.editProfile,
          leadOnTap: () {
            Get.back();
          },
          centerTitle: false,
          leadIcon: const Icon(
            Icons.arrow_back_rounded,
            color: ColorConst.blackColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.04),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaXaKH9Q7gVGHSc2_IK3mOhpEaiULsMGxwRUe2nL4b&s"),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -5,
                      right: -8,
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: ColorConst.whiteColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                              color: ColorConst.blueColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: ColorConst.whiteColor,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              CommonRequiredText(
                width: width,
                text: StringUtils.firstName,
              ),
              SizedBox(height: height * 0.01),
              CommonTextField(
                validator: (value) {},
                controller: firstNameController,
              ),
              SizedBox(height: height * 0.02),
              CommonRequiredText(
                width: width,
                text: StringUtils.lastName,
              ),
              SizedBox(height: height * 0.01),
              CommonTextField(
                validator: (value) {},
                controller: firstNameController,
              ),
              SizedBox(height: height * 0.02),
              CommonRequiredText(
                width: width,
                text: StringUtils.email,
              ),
              SizedBox(height: height * 0.01),
              CommonTextField(
                validator: (value) {},
                controller: firstNameController,
              ),
              SizedBox(height: height * 0.02),
              CommonRequiredText(
                width: width,
                text: StringUtils.phone,
              ),
              SizedBox(height: height * 0.01),
              CommonTextField(
                validator: (value) {},
                controller: firstNameController,
              ),
              SizedBox(height: height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonButton(
                    textStyleConst: TextStyleConst.mediumTextStyle(ColorConst.whiteColor, width * 0.05),
                    onTap: () {},
                    color: ColorConst.blueColor,
                    text: StringUtils.save,
                    width: width / 2.3,
                    height: 50,
                  ),
                  CommonButton(
                    textStyleConst: TextStyleConst.mediumTextStyle(ColorConst.hintGreyColor, width * 0.05),
                    onTap: () {
                      Get.back();
                    },
                    color: ColorConst.borderGreyColor,
                    text: StringUtils.cancel,
                    width: width / 2.3,
                    height: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
