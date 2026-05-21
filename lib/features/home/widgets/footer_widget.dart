import 'package:flutter/material.dart';
import 'package:home_made_store_app/core/app_colors.dart';
import 'package:home_made_store_app/core/app_constants.dart';
import 'package:home_made_store_app/core/app_text_styles.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo Column
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Candles &\nmore', style: AppTextStyles.footerTitle),
                const SizedBox(height: AppSpacing.sm),
                Container(width: 60, height: 2, color: AppColors.textPrimary),
              ],
            ),
          ),

          const SizedBox(width: AppSpacing.lg),

          // Links Column 1
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _FooterLink('About'),
                _FooterLink('Blog'),
                _FooterLink('Terms of service'),
                _FooterLink('products'),
              ],
            ),
          ),

          // Links Column 2
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _FooterLink('contact us'),
                _FooterLink('support'),
                _FooterLink('privacy policy'),
                _FooterLink('FAQ'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String label;
  const _FooterLink(this.label);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(label, style: AppTextStyles.footerLink),
    );
  }
}
