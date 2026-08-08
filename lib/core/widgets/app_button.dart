import 'package:flutter/material.dart';
import 'package:project_flutter_avanced/core/extensions/num_extensions.dart';
import 'package:project_flutter_avanced/core/system%20design/app_colors.dart';
import 'package:project_flutter_avanced/core/system%20design/app_spacing.dart';

enum ButtonType { primary, outlined, text }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    this.onPressed,
    this.type = ButtonType.primary,
    this.isLoading = false,
    this.icon,
    this.width,
    this.height = 56,
    this.textStyle,
    this.iconColor,
  });

  final String label;
  final VoidCallback? onPressed;
  final ButtonType type;
  final bool isLoading;
  final IconData? icon;
  final double? width;
  final double height;
  final TextStyle? textStyle;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final child = isLoading
        ? Center(
            child: SizedBox(
              width: 22,
              height: 22,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                color: AppColors.primary,
              ),
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  size: AppSpacing.s_20,
                  color: iconColor ?? AppColors.backgrounColor,
                ),
                AppSpacing.w_8.wSpace,
              ],
              Text(label, style: textStyle),
            ],
          );

    Widget button;

    switch (type) {
      case ButtonType.primary:
        button = ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.backgrounColor,
            shape: RoundedRectangleBorder(borderRadius: AppSpacing.r_10.rAll),
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          child: child,
        );
        break;

      case ButtonType.outlined:
        button = OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: textStyle!.color, // هذا هو الحل الرئيسي
            side: BorderSide(color: AppColors.gray),
            shape: RoundedRectangleBorder(borderRadius: AppSpacing.r_10.rAll),
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          child: child,
        );
        break;

      case ButtonType.text:
        button = TextButton(
          onPressed: isLoading ? null : onPressed,
          style: TextButton.styleFrom(
            foregroundColor: textStyle!.color,
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          child: child,
        );
        break;
    }

    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: button,
    );
  }
}
