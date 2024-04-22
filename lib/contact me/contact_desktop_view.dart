import 'package:flutter/material.dart';

import '../../../app/configs.dart';
import '../../../app/icons.dart';
import '../../../core/utils/ScreenUiHelper.dart';
import '../../widgets/fadeAnimation.dart';
import '../../widgets/icon_wrapper.dart';
import 'contact_view_model.dart';

class ContactDesktopView extends StatelessWidget {
  final ScreenUiHelper? uiHelpers;
  final ContactViewModel? model;

  const ContactDesktopView({Key? key, this.uiHelpers, this.model})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uiHelpers!.backgroundColor,
      body: Form(
        key: model!.formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Get In Touch!',
                  style: TextStyle(color: Colors.black, fontSize: 45),
                ),
                const SizedBox(
                  height: 8,
                ),
                FadeAnimation(
                  xDistance: 0,
                  delay: 1,
                  yDistance: 10,
                  child: Text(
                    'Contact me for hiring,or help me to join your team',
                    style: TextStyle(
                        color: uiHelpers!.textSecondaryColor, fontSize: 25),
                  ),
                ),
                uiHelpers!.verticalSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeAnimation(
                        xDistance: 00,
                        yDistance: 20,
                        delay: 1.25,
                        child: IconWrrapper(
                          onTap: () =>
                              model!.navigateToSocial(SocialLinks.githubLink),
                          child: Icon(
                            ContactIcons.githubIcon,
                            color: Colors.black,
                            size: 30,
                          ),
                        )),
                    FadeAnimation(
                        xDistance: 00,
                        yDistance: 20,
                        delay: 1.25,
                        child: IconWrrapper(
                          onTap: () =>
                              model!.navigateToSocial(SocialLinks.twitterLink),
                          child: Icon(
                            ContactIcons.twitterIcon,
                            color: Colors.black,
                            size: 30,
                          ),
                        )),
                    FadeAnimation(
                        xDistance: 00,
                        yDistance: 20,
                        delay: 1.25,
                        child: IconWrrapper(
                          onTap: () =>
                              model!.navigateToSocial(SocialLinks.linkedinUrl),
                          child: Icon(
                            ContactIcons.linkedinIcon,
                            color: Colors.black,
                            size: 30,
                          ),
                        )),
                  ],
                ),
                uiHelpers!.verticalSpaceMedium,
                FadeAnimation(
                  xDistance: 00,
                  yDistance: 25,
                  delay: 1.5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 25),
                    width: uiHelpers!.width! * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact Form',
                          style: TextStyle(color: Colors.black),
                        ),
                        uiHelpers!.verticalSpaceLow,
                        Row(
                          children: [
                            SizedBox(
                              width: uiHelpers!.width! * 0.3,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Your Name',
                                      style: TextStyle(
                                          color: uiHelpers!.textSecondaryColor),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'Your Email',
                                      style: TextStyle(
                                          color: uiHelpers!.textSecondaryColor),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'Subject',
                                      style: TextStyle(
                                          color: uiHelpers!.textSecondaryColor),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                  ]),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Message',
                                      style: TextStyle(
                                          color: uiHelpers!.textSecondaryColor),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        uiHelpers!.verticalSpaceHigh,
                        FadeAnimation(
                          xDistance: 00,
                          delay: 2,
                          child: Container(
                              alignment: Alignment.center,
                              child: IconWrrapper(
                                onTap: () => model!.openMail(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      FormIcon.messageIcon,
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Send Message',
                                      style: uiHelpers!.buttonStyle,
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
