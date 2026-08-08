import 'package:flutter/material.dart';
import 'package:project_flutter_avanced/core/extensions/num_extensions.dart';
import 'package:project_flutter_avanced/core/system%20design/app_spacing.dart';
import 'package:project_flutter_avanced/features/auth/presentation/widgets/doc_doc_image_and_text.dart';
import 'package:project_flutter_avanced/features/auth/presentation/widgets/doc_logo_and_name.dart';
import 'package:project_flutter_avanced/features/auth/presentation/widgets/text_and_get_start_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DocLogoAndName(),
            AppSpacing.h_40.hSpace,
            DocDocImageAndText(),
            TextAndGetStartButton(),
          ],
        ),
      ),
    );
  }
}
