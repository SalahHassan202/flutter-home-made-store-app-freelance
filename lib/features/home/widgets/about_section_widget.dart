import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_made_store_app/core/app_colors.dart';
import 'package:home_made_store_app/core/app_constants.dart';
import 'package:home_made_store_app/core/app_text_styles.dart';

class AboutSectionWidget extends StatelessWidget {
  const AboutSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: AppColors.surface,
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('About Us', style: AppTextStyles.aboutTitle),

                  const SizedBox(height: AppSpacing.sm),

                  Text(
                    'We create handcrafted candles with natural ingredients, bringing warmth and serenity to your home.',
                    style: AppTextStyles.bodyMedium,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: AppSpacing.sm),

                  Row(
                    children: [
                      Expanded(child: _OutlinedButton(label: 'Discover more')),

                      const SizedBox(width: AppSpacing.sm),

                      Expanded(child: _FilledButton(label: 'Shop Now')),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 4,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(AppImages.aboutUs),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OutlinedButton extends StatelessWidget {
  final String label;

  const _OutlinedButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},

      child: Container(
        alignment: Alignment.center,

        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs + 4,
        ),

        decoration: BoxDecoration(
          color: AppColors.primarySoft,
          borderRadius: BorderRadius.circular(AppRadius.circular),
        ),

        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,

          style: GoogleFonts.lato(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}

class _FilledButton extends StatelessWidget {
  final String label;

  const _FilledButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},

      child: Container(
        alignment: Alignment.center,

        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs + 4,
        ),

        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(AppRadius.circular),
        ),

        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,

          style: GoogleFonts.lato(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
