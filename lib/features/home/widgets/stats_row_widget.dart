import 'package:flutter/material.dart';
import 'package:home_made_store_app/core/app_colors.dart';
import 'package:home_made_store_app/core/app_constants.dart';
import 'package:home_made_store_app/core/app_text_styles.dart';

class StatsRowWidget extends StatelessWidget {
  const StatsRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
      child: Row(
        children: [
          _StatItem(label: 'Perfect Quality', value: null),
          _Divider(),
          _StatItem(label: 'Users', value: '200k'),
          _Divider(),
          _StatItem(label: 'Natural', value: '100%'),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String? value;

  const _StatItem({required this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          if (value != null)
            Text(value!, style: AppTextStyles.statsBold)
          else
            const SizedBox.shrink(),
          Text(
            value != null ? label : label,
            style: value != null
                ? AppTextStyles.statsLabel
                : AppTextStyles.statsBold.copyWith(
                    fontSize: 13,
                    color: AppColors.textSecondary,
                  ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 30, width: 1, color: AppColors.divider);
  }
}
