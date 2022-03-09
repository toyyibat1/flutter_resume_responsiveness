import 'package:flutter/material.dart';
import 'package:flutter_resume_responsiveness/core/app_colors.dart';
import 'package:flutter_resume_responsiveness/core/app_spacing.dart';
import 'package:flutter_resume_responsiveness/core/app_textstyle.dart';
import 'package:flutter_resume_responsiveness/shared/app_responsive.dart';
import 'package:flutter_resume_responsiveness/shared/widgets/home_widget.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!AppResponsive.isDesktop(context)) ...{
            EducationContainer(),
            Container(
              color: AppColor.primaryColor,
              width: 54,
              height: 10,
            ),
          },
          Interests(),
        ],
      ),
    );
  }
}

class EducationContainer extends StatelessWidget {
  const EducationContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Education', style: kMTextStyle),
        if (!AppResponsive.isDesktop(context)) ...{
          Text('BFA IN GRAPHIC DESIGN - JAMES MADISON\nUNIVERSITY',
              style: kTextStyle),
          const Text('Graduated 2014'),
        },
        kSSmallVerticalSpacing,
        if (AppResponsive.isDesktop(context)) ...{
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('BFA IN GRAPHIC DESIGN - JAMES MADISON UNIVERSITY',
                  style: kTextStyle),
              const Text('Graduated 2014'),
            ],
          )
        },
        kMLLargeVerticalSpacing,
      ],
    );
  }
}

class CareerTraits extends StatelessWidget {
  CareerTraits({Key? key, this.title, this.desc}) : super(key: key);

  final String? title;
  final String? desc;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: title,
          style: kPrimaryStyle.copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: desc!,
                style: kPrimaryStyle.copyWith(fontWeight: FontWeight.normal))
          ]),
    );
  }
}

class Interests extends StatelessWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kMLLargeVerticalSpacing,
          const Text('SKILLSET', style: kTextStyle),
          const SizedBox(height: 10),
          const Text(
            'Visual Design',
            style: kPrimaryStyle,
          ),
          const Text('Illustration', style: kPrimaryStyle),
          const Text('UX / Prototyping', style: kPrimaryStyle),
          const Text('Video / Motion Graphics', style: kPrimaryStyle),
          const Text('Marketing', style: kPrimaryStyle),
          const Text('Front-End Development', style: kPrimaryStyle),
          kLExtralargeVerticalSpacing,
          const Text('AWARDS', style: kTextStyle),
          const SizedBox(
            height: 10,
          ),
          Text('Award 1 - Mar.2019', style: kPrimaryStyle),
          Text('Award 2 - Sep.2015', style: kPrimaryStyle),
          Text('Award 3 - Feb.2013', style: kPrimaryStyle),
          Text('Award 4 - Dec.2011', style: kPrimaryStyle),
          Text('Award 5 - Jan.2005', style: kPrimaryStyle),
          kLExtralargeVerticalSpacing,
          const Text('CAREER TRAITS', style: kTextStyle),
          const SizedBox(
            height: 10,
          ),
          CareerTraits(
            title: 'Holistic Designer',
            desc:
                '- Design should be treated as a living organism, guided by the environment it lives in as a whole.',
          ),
          CareerTraits(
            title: 'User-Focused',
            desc:
                '- I pay close attention to the user’s needs and pain points. I design with empathy. Launch, learn & iterate.',
          ),
          CareerTraits(
            title: 'Proactive Evolution',
            desc:
                ' - Curiosity and a desire to learn constantly broadens my skill set, enabling me to wear many hats at once.',
          ),
          CareerTraits(
            title: 'Bold, yet practical',
            desc:
                '- I know when to push the boundaries vs. when to embrace simplicity to meet multiple deadlines.',
          ),
          const Text(
              'Bold, yet practical - I know when to push the boundaries vs. when to embrace simplicity to meet multiple deadlines.',
              style: kPrimaryStyle),
          kLExtralargeVerticalSpacing,
          Text('RECENT WORKS', style: kTextStyle),
          const SizedBox(height: 10),
          Text('thedonut.co →',
              style: kPrimaryStyle.copyWith(color: AppColor.primaryColor)),
          Text('outboundengine.com →',
              style: kPrimaryStyle.copyWith(color: AppColor.primaryColor)),
          Text('rswalsh.com →',
              style: kPrimaryStyle.copyWith(color: AppColor.primaryColor)),
          Text('frondaustin.com →',
              style: kPrimaryStyle.copyWith(color: AppColor.primaryColor)),
          Text('tipyo.net →',
              style: kPrimaryStyle.copyWith(color: AppColor.primaryColor)),
          Text('codefresh.io →',
              style: kPrimaryStyle.copyWith(color: AppColor.primaryColor)),
          Text('carsoncreekranch.com →',
              style: kPrimaryStyle.copyWith(color: AppColor.primaryColor)),
        ],
      ),
    );
  }
}
