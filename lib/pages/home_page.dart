import 'package:flutter/material.dart';
import 'package:flutter_resume_responsiveness/core/app_colors.dart';
import 'package:flutter_resume_responsiveness/core/app_spacing.dart';
import 'package:flutter_resume_responsiveness/pages/about_me.dart';
import 'package:flutter_resume_responsiveness/pages/dashboard.dart';
import 'package:flutter_resume_responsiveness/pages/education.dart';
import 'package:flutter_resume_responsiveness/pages/experience.dart';
import 'package:flutter_resume_responsiveness/pages/footer.dart';
import 'package:flutter_resume_responsiveness/shared/app_responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hasPageChange =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Dashboard(),
            if (AppResponsive.isTablet(context)) ...{
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 120),
                  child: Column(
                    children: [
                      AboutMe(),
                      Experience(),
                      Education(),
                    ],
                  ))
            },
            if (AppResponsive.isDesktop(context)) ...{
              Container(
                margin: EdgeInsets.symmetric(horizontal: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Education(),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AboutMe(),
                          Experience(),
                          if (AppResponsive.isDesktop(context)) ...{
                            kLargeVerticalSpacing
                          },
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: EducationContainer(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Footer(),
            },
            if (!AppResponsive.isDesktop(context)) ...{
              AboutMe(),
              Experience(),
              Education(),
              Footer(),
            },
          ],
        ),
      ),
    );
  }
}
