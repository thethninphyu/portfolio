import 'package:flutter/material.dart';

import '../../../app/configs.dart';
import '../../../app/icons.dart';
import '../../../core/utils/ScreenUiHelper.dart';
import '../../widgets/fadeAnimation.dart';
import '../../widgets/icon_wrapper.dart';
import 'contact_view_model.dart';

class ContactMobileView extends StatelessWidget {
  final ScreenUiHelper? uiHelpers;
  final ContactViewModel? model;

  const ContactMobileView({Key? key, this.uiHelpers, this.model})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uiHelpers!.backgroundColor,
      body: Form(
        key: model!.formKey,
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  uiHelpers!.verticalSpaceMedium,
                  Text(
                    'Get In Touch!',
                    style: uiHelpers!.headline!.copyWith(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  FadeAnimation(
                    yDistance: 30,
                    delay: 1,
                    child: Text(
                      'Contact me for hiring,or help me to join your team',
                      style: uiHelpers!.body!.copyWith(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  uiHelpers!.verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeAnimation(
                        yDistance: 30,
                        delay: 1.25,
                        child: IconWrrapper(
                          child: Icon(
                            ContactIcons.githubIcon,
                            color: uiHelpers!.textPrimaryColor,
                          ),
                          onTap: () =>
                              model!.navigateToSocial(SocialLinks.githubLink),
                        ),
                      ),
                      FadeAnimation(
                        yDistance: 30,
                        delay: 1.25,
                        child: IconWrrapper(
                          child: Icon(
                            ContactIcons.twitterIcon,
                            color: uiHelpers!.textPrimaryColor,
                          ),
                          onTap: () =>
                              model!.navigateToSocial(SocialLinks.twitterLink),
                        ),
                      ),
                      FadeAnimation(
                        yDistance: 30,
                        delay: 1.25,
                        child: IconWrrapper(
                          child: Icon(
                            ContactIcons.linkedinIcon,
                            color: uiHelpers!.textPrimaryColor,
                          ),
                          onTap: () =>
                              model!.navigateToSocial(SocialLinks.linkedinUrl),
                        ),
                      )
                    ],
                  ),
                  uiHelpers!.verticalSpaceMedium,
                  FadeAnimation(
                    yDistance: 30,
                    delay: 1.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact Form',
                          style: uiHelpers!.title,
                        ),
                        uiHelpers!.verticalSpaceLow,
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Name',
                                style: uiHelpers!.body,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Your Email',
                                style: uiHelpers!.body,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Subject',
                                style: uiHelpers!.body,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Message',
                                style: uiHelpers!.body,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                            ]),
                        uiHelpers!.verticalSpaceMedium,
                        Align(
                          child: IconWrrapper(
                            margin: const EdgeInsets.all(0),
                            color: uiHelpers!.backgroundColor,
                            padding: const EdgeInsets.all(0),
                            onTap: () => model!.openMail(),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 15),
                              child: Text(
                                'Send Message',
                                style: uiHelpers!.buttonStyle!.copyWith(
                                    color: uiHelpers!.textPrimaryColor),
                              ),
                            ),
                          ),
                        ),
                        uiHelpers!.verticalSpaceMedium,
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
