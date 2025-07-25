import 'package:crud_app_using_riverpod_go_router/src/presentation/core/theme/theme.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
          context.color.onPrimary.withValues(alpha: 0.75),
        ),
      ),
    );
  }
}
