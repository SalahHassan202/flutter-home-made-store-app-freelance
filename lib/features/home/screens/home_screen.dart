import 'package:flutter/material.dart';
import 'package:home_made_store_app/core/app_colors.dart';
import 'package:home_made_store_app/core/app_constants.dart';
import 'package:home_made_store_app/features/home/widgets/bestsellers_scetion_widget.dart';
import 'package:home_made_store_app/features/home/widgets/bootom_nav_bar_widget.dart';
import '../widgets/home_app_bar_widget.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/hero_banner_widget.dart';
import '../widgets/stats_row_widget.dart';
import '../widgets/about_section_widget.dart';
import '../widgets/social_section_widget.dart';
import '../widgets/footer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const HomeAppBar(),
      bottomNavigationBar: const HomeBottomNavBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HomeSearchBar(),
            const HeroBannerWidget(),
            const SizedBox(height: AppSpacing.md),
            const StatsRowWidget(),
            const AboutSectionWidget(),
            BestsellersSectionWidget(),
            const SocialSectionWidget(),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
