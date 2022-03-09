import 'package:flutter/material.dart';
import 'package:flutter_resume_responsiveness/core/app_colors.dart';
import 'package:flutter_resume_responsiveness/core/app_spacing.dart';
import 'package:flutter_resume_responsiveness/core/app_textstyle.dart';
import 'package:flutter_resume_responsiveness/shared/app_responsive.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Experience',
            style: kMTextStyle,
          ),
          kMediumVerticalSpacing,
          const TextContainer(
            textTitle: 'FRONT-END DEVELOPER - DROPBOX',
            date: 'Mar.2020 - Present',
          ),
          const TextContainer(
            textTitle: 'VISUAL DESIGNER - OUTBOUNDENGINE',
            date: 'Sep.2017 - Mar.2020',
          ),
          const TextContainer(
            textTitle: 'LEAD DEVELOPER - SCRYPT.INC',
            date: 'Jun.2014 - Sept.2017',
          ),
          const TextContainer(
            textTitle: 'UI DESIGNER - PINGER.INC',
            date: 'Jun.2014 - Sept.2017',
          ),
          if (AppResponsive.isDesktop(context)) ...{kLargeVerticalSpacing},
          Container(
            color: AppColor.primaryColor,
            width: 54,
            height: 10,
          ),
        ],
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({Key? key, this.textTitle, this.date}) : super(key: key);

  final String? textTitle;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!AppResponsive.isDesktop(context)) ...{
            Text(
              textTitle!,
              style: kTextStyle,
            ),
            kExtraSmallVerticalSpacing,
            Text(date!),
            kSSmallVerticalSpacing,
            const Text(
                "Describe your responsibilities.  Tum dicere exorsus est cur verear, ne ad id omnia referri oporteat, ipsum per se ipsam voluptatem, quia consequuntur magni dolores eos, qui blanditiis praesentium voluptatum deleniti atque insitam in ea quid est eligendi optio, cumque nihil ut ipsi auctori huius disciplinae placet: constituam, quid."),
            kMLLargeVerticalSpacing,
          },
          if (AppResponsive.isDesktop(context)) ...{
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textTitle!,
                  style: kTextStyle,
                ),
                kExtraSmallVerticalSpacing,
                Text(date!),
              ],
            ),
            kSSmallVerticalSpacing,
            const Text(
                "Describe your responsibilities.  Tum dicere exorsus est cur verear, ne ad id omnia referri oporteat, ipsum per se ipsam voluptatem, quia consequuntur magni dolores eos, qui blanditiis praesentium voluptatum deleniti atque insitam in ea quid est eligendi optio, cumque nihil ut ipsi auctori huius disciplinae placet: constituam, quid."),
            kMLLargeVerticalSpacing,
          }
        ],
      ),
    );
  }
}
