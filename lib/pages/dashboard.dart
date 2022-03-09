import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_responsiveness/core/app_colors.dart';
import 'package:flutter_resume_responsiveness/core/app_spacing.dart';
import 'package:flutter_resume_responsiveness/core/app_textstyle.dart';
import 'package:flutter_resume_responsiveness/shared/app_responsive.dart';

import 'about_me.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        color: AppColor.secondaryColor.withOpacity(0.1),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            if (AppResponsive.isDesktop(context)) ...{
              Container(
                margin: EdgeInsets.only(bottom: 165),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatarContainer(
                      radius: 200,
                    ),
                    TopDetailContainer(
                      alignment: CrossAxisAlignment.start,
                      textstyle: kELTextStyle,
                    ),
                    kExtraExtraLargeVerticalSpacing,
                  ],
                ),
              )
            },
            if (AppResponsive.isTablet(context)) ...{
              CircleAvatarContainer(
                radius: 100,
              ),
              kMLargeVerticalSpacing,
              TopDetailContainer(
                alignment: CrossAxisAlignment.center,
                textstyle: kMeTextStyle,
                textAlign: TextAlign.center,
              ),
              kExtraExtraLargeVerticalSpacing
            },
            if (AppResponsive.isMobile(context)) ...{
              CircleAvatarContainer(
                radius: 50,
              ),
              kMLargeVerticalSpacing,
              TopDetailContainer(
                alignment: CrossAxisAlignment.center,
                textstyle: kLTextStyle,
                textAlign: TextAlign.center,
              ),
              kExtraExtraLargeVerticalSpacing
            },
          ],
        ),
      ),
      clipper: HeaderColor(),
    );
  }
}

class TopDetailContainer extends StatelessWidget {
  const TopDetailContainer({
    this.textstyle,
    this.alignment,
    Key? key,
    this.textAlign,
  }) : super(key: key);

  final TextStyle? textstyle;
  final TextAlign? textAlign;
  final CrossAxisAlignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment!,
      children: [
        Text('DESIGNER / DEVELOPER', style: kTextStyle),
        kMSmallVerticalSpacing,
        Text(
          "Matt\nMcDonald",
          style: textstyle,
          textAlign: textAlign,
        ),
        kMLLargeVerticalSpacing,
        ElevatedButton(
          onPressed: () {},
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
              child: Text('CONTACT ME')),
        ),
      ],
    );
  }
}

class CircleAvatarContainer extends StatelessWidget {
  const CircleAvatarContainer({
    this.radius,
    Key? key,
  }) : super(key: key);

  final double? radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(
        'https://i0.wp.com/austinemedia.com/wp-content/uploads/2018/10/1-8.jpg?resize=642%2C642&ssl=1',
      ),
      backgroundColor: Colors.transparent,
    );
  }
}

class HeaderColor extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 10);
    path.lineTo(size.width, size.height - 60);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
