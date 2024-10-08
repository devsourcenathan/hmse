import 'package:flutter/material.dart';
import 'package:infyhms_flutter/constant/color_const.dart';
import 'package:infyhms_flutter/constant/text_style_const.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback leadOnTap;
  // final bool centerTitle;
  final Icon leadIcon;
  const CommonAppBar({
    Key? key,
    required this.title,
    required this.leadOnTap,
    // required this.centerTitle,
    required this.leadIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leading: IconButton(
          onPressed: leadOnTap,
          icon: leadIcon,
        ),
        backgroundColor: ColorConst.whiteColor,
        elevation: 3,
        centerTitle: true,
        shadowColor: ColorConst.greyShadowColor,
        title: Text(
          title,
          style: TextStyleConst.boldTextStyle(
            ColorConst.blackColor,
            width * 0.05,
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
