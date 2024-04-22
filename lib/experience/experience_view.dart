import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/utils/architecture_view.dart';
import 'experience_desktop_view.dart';
import 'experience_view_model.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<ExperienceViewModel>(
        viewModel: ExperienceViewModel(),
        onModelReady: (m) => m.init(),
        builder: (context, uiHelpers, model) => ScreenTypeLayout(
              desktop:
                  ExperienceDesktopView(model: model, uiHelpers: uiHelpers),
              tablet: ExperienceDesktopView(model: model, uiHelpers: uiHelpers),
              mobile: ExperienceDesktopView(model: model, uiHelpers: uiHelpers),
            ));
  }
}
