import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_made_store_app/core/app_colors.dart';
import 'package:home_made_store_app/core/app_constants.dart';
import 'package:home_made_store_app/core/app_text_styles.dart';

class SocialSectionWidget extends StatelessWidget {
  const SocialSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'follow us here',
              style: GoogleFonts.playfairDisplay(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    _SocialItem(
                      icon: Icons.camera_alt_outlined,
                      handle: '@Candlesand more',
                    ),
                    SizedBox(height: AppSpacing.md),
                    _SocialItem(
                      icon: Icons.flutter_dash,
                      handle: '@Candlesand more',
                    ),
                    SizedBox(height: AppSpacing.md),
                    _SocialItem(
                      icon: Icons.play_circle_outline_rounded,
                      handle: '@Candlesand more',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: AppSpacing.md),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    _SocialImage(AppImages.socialImage1),
                    const SizedBox(height: AppSpacing.xs),
                    _SocialImage(AppImages.socialImage2),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SocialItem extends StatelessWidget {
  final IconData icon;
  final String handle;

  const _SocialItem({required this.icon, required this.handle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: AppColors.textPrimary,
            borderRadius: BorderRadius.circular(AppRadius.sm),
          ),
          child: Icon(icon, color: AppColors.white, size: 22),
        ),
        const SizedBox(width: AppSpacing.sm + 4),
        Text(handle, style: AppTextStyles.socialHandle),
      ],
    );
  }
}

class _SocialImage extends StatelessWidget {
  final String imageUrl;
  const _SocialImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadius.md),
      child: Image.network(
        imageUrl,
        height: 80,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Container(
          height: 80,
          color: AppColors.primarySoft,
          child: const Icon(Icons.image_outlined, color: AppColors.primary),
        ),
      ),
    );
  }
}
