import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:medica/core/const/text_style.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.name, required this.svgIconPath, required this.onTap});

  final String name;
  final String svgIconPath;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.r),
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 12.h,horizontal: 4.w),
          child: Row(
            children: [
              SvgPicture.asset(
                svgIconPath,
                width: 24.w,
                height: 24.h,
              ),
               Gap(16.w),
              Text(name, style: CustomTextStyle.bodyXL),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
    );
  }
}
