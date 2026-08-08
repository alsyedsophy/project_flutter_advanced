import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_flutter_avanced/core/extensions/num_extensions.dart';
import 'package:project_flutter_avanced/core/extensions/widget_extensions.dart';
import 'package:project_flutter_avanced/core/routing/routes.dart';
import 'package:project_flutter_avanced/core/system%20design/app_spacing.dart';
import 'package:project_flutter_avanced/core/system%20design/app_typography.dart';
import 'package:project_flutter_avanced/core/widgets/app_button.dart';

class TextAndGetStartButton extends StatelessWidget {
  const TextAndGetStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSpacing.h_18.hSpace,
        Text(
          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
          textAlign: TextAlign.center,
          style: AppTypography.font13GrayReguler,
        ),
        AppSpacing.h_32.hSpace,
        AppButton(
          label: 'Get Started',
          onPressed: () => context.pushNamed(Routes.loginName),
          textStyle: AppTypography.font16WhiteSemibold,
        ),
      ],
    ).paddingHorizontal(AppSpacing.w_32);
  }
}
