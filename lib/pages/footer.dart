import 'package:flutter/material.dart';
import 'package:flutter_resume_responsiveness/core/app_colors.dart';
import 'package:flutter_resume_responsiveness/core/app_spacing.dart';
import 'package:flutter_resume_responsiveness/core/app_textstyle.dart';
import 'package:flutter_resume_responsiveness/shared/app_responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.8,
          color: AppColor.secondaryColor.withOpacity(0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kExtraExtraLargeVerticalSpacing,
              Text(
                "Get in touch!",
                style: kMTextStyle,
              ),
              kMLLargeVerticalSpacing,
              Text('youremail@email.com\n512.273.1838',
                  textAlign: TextAlign.center, style: kLPrimaryStyle),
              kMLLargeVerticalSpacing,
              if (!AppResponsive.isDesktop(context)) ...{
                FooterContainer(
                  width: MediaQuery.of(context).size.width / 2,
                ),
              },
              if (AppResponsive.isDesktop(context)) ...{
                FooterContainer(
                  width: MediaQuery.of(context).size.width / 4,
                ),
              },
              kMediumVerticalSpacing
            ],
          ),
        ),
        clipper: HeaderColor());
  }
}

class FooterContainer extends StatelessWidget {
  const FooterContainer({
    Key? key,
    this.width,
  }) : super(key: key);
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(FontAwesomeIcons.facebook, color: AppColor.primaryColor),
          Icon(FontAwesomeIcons.instagram, color: AppColor.primaryColor),
          Icon(FontAwesomeIcons.linkedin, color: AppColor.primaryColor),
          Icon(
            FontAwesomeIcons.twitter,
            color: AppColor.primaryColor,
          ),
        ],
      ),
    );
  }
}

class HeaderColor extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height + 50);
    path.lineTo(0, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
