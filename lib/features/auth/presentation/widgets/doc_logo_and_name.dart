import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_flutter_avanced/core/constants/app_assets.dart';
import 'package:project_flutter_avanced/core/extensions/num_extensions.dart';
import 'package:project_flutter_avanced/core/system%20design/app_spacing.dart';
import 'package:project_flutter_avanced/core/system%20design/app_typography.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.logo),
        AppSpacing.w_10.wSpace,
        Text("Docdoc", style: AppTypography.font24BlackBold),
      ],
    );
  }
}
