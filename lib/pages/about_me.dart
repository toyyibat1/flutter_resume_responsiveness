import 'package:flutter/material.dart';
import 'package:flutter_resume_responsiveness/core/app_colors.dart';
import 'package:flutter_resume_responsiveness/core/app_spacing.dart';
import 'package:flutter_resume_responsiveness/core/app_textstyle.dart';
import 'package:flutter_resume_responsiveness/shared/app_responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kExtraLargeVerticalSpacing,
          const Text(
            'About Me',
            style: kMTextStyle,
          ),
          const SizedBox(height: 10),
          const Text(
              "Use this area to say something about yourself or describe your goals.  Tum dicere exorsus est cur verear, ne ad id omnia referri oporteat, ipsum per se ipsam voluptatem, quia consequuntur magni dolores eos, qui blanditiis praesentium voluptatum deleniti atque insitam in ea quid est eligendi optio, cumque nihil ut ipsi auctori huius disciplinae placet: constituam, quid."),
          kLargeVerticalSpacing,
          if (AppResponsive.isDesktop(context)) ...{kLargeVerticalSpacing},
          Container(
            color: AppColor.primaryColor,
            width: 54,
            height: 10,
          ),
          if (AppResponsive.isDesktop(context)) ...{kLargeVerticalSpacing},
        ],
      ),
    );
  }
}
