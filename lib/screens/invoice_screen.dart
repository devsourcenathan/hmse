import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infyhms_flutter/constant/color_const.dart';
import 'package:infyhms_flutter/constant/text_style_const.dart';
import 'package:infyhms_flutter/screens/invoice_detail_screen.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(() => const InvoiceDetailScreen(), transition: Transition.rightToLeft);
            },
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: index == 0 ? 15 : 5),
              height: 60,
              color: Colors.transparent,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "#2BVF5Q",
                        style: TextStyleConst.boldTextStyle(
                          ColorConst.blueColor,
                          width * 0.045,
                        ),
                      ),
                      SizedBox(height: height * 0.004),
                      RichText(
                        text: TextSpan(
                          text: "Paid | ",
                          style: TextStyleConst.mediumTextStyle(
                            Colors.green,
                            width * 0.037,
                          ),
                          children: [
                            TextSpan(
                              text: "13th Jul, 2022",
                              style: TextStyleConst.mediumTextStyle(
                                ColorConst.hintGreyColor,
                                width * 0.037,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 45,
                    decoration: BoxDecoration(
                      color: ColorConst.bgGreyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "\$ 870",
                        style: TextStyleConst.boldTextStyle(ColorConst.blackColor, width * 0.04),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
