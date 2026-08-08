import 'package:flutter/material.dart';
import 'package:project_flutter_avanced/core/extensions/num_extensions.dart';
import 'package:project_flutter_avanced/core/extensions/widget_extensions.dart';
import 'package:project_flutter_avanced/core/system%20design/app_spacing.dart';
import 'package:project_flutter_avanced/core/widgets/app_button.dart';

class AppErrorView extends StatelessWidget {
  const AppErrorView({
    required this.message,
    this.onRetry,
    this.retryLabel,
    super.key,
  });

  final String message;
  final VoidCallback? onRetry;
  final String? retryLabel;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final VoidCallback? onRetry = this.onRetry;
    final String? retryLabel = this.retryLabel;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.error_outline,
            size: AppSpacing.s_30,
            color: theme.colorScheme.error,
          ),
          AppSpacing.h_24.hSpace,
          Text(
            message,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
          if (onRetry != null && retryLabel != null) ...<Widget>[
            AppSpacing.h_24.hSpace,
            AppButton(label: retryLabel, onPressed: onRetry),
          ],
        ],
      ).paddingAll(AppSpacing.h_24),
    );
  }
}
