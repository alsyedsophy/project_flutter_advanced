import 'package:flutter/widgets.dart';
import 'package:project_flutter_avanced/core/system%20design/app_colors.dart';

class AppTypography {
  AppTypography._();

  static const TextStyle font24BlackBold = TextStyle(
    fontSize: 24,
    color: AppColors.onPrimary,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle font32blueBold = TextStyle(
    fontSize: 32,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font13GrayReguler = TextStyle(
    fontSize: 13,
    color: AppColors.gray,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle font16WhiteSemibold = TextStyle(
    fontSize: 16,
    color: AppColors.backgrounColor,
    fontWeight: FontWeight.w600,
  );
}
