import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_made_store_app/core/app_colors.dart';
import 'package:home_made_store_app/core/app_constants.dart';

class HeroBannerWidget extends StatelessWidget {
  const HeroBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.bannerHeight,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.xl),
        image: const DecorationImage(
          image: NetworkImage(AppImages.heroBanner),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.xl),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              // ignore: deprecated_member_use
              AppColors.primary.withOpacity(0.85),
              // ignore: deprecated_member_use
              AppColors.primary.withOpacity(0.1),
              Colors.transparent,
            ],
            stops: const [0.0, 0.55, 1.0],
          ),
        ),
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Text(
              'Candles\n& More',
              style: GoogleFonts.playfairDisplay(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: AppColors.white,
                height: 1.1,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            SizedBox(
              width: 160,
              child: Text(
                'Handcrafted with love.\nNatural & 100% organic.',
                style: GoogleFonts.lato(
                  fontSize: 12,
                  // ignore: deprecated_member_use
                  color: AppColors.white.withOpacity(0.9),
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            _ShopNowButton(),
          ],
        ),
      ),
    );
  }
}

class _ShopNowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm + 2,
        ),
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: AppColors.white.withOpacity(0.25),
          borderRadius: BorderRadius.circular(AppRadius.circular),
          border: Border.all(
            // ignore: deprecated_member_use
            color: AppColors.white.withOpacity(0.8),
            width: 1.5,
          ),
        ),
        child: Text(
          'Shop Now',
          style: GoogleFonts.lato(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
