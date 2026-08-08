import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_flutter_avanced/core/constants/app_assets.dart';
import 'package:project_flutter_avanced/core/system%20design/app_typography.dart';

class DocDocImageAndText extends StatelessWidget {
  const DocDocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset(AppAssets.logoWithLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset(AppAssets.onBoardingDocDoc),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: AppTypography.font32blueBold.copyWith(height: 1.2),
          ),
        ),
      ],
    );
  }
}
