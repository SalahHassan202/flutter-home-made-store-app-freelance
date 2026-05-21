import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_made_store_app/core/app_colors.dart';
import 'package:home_made_store_app/core/app_constants.dart';
import 'package:home_made_store_app/core/app_text_styles.dart';
import 'package:home_made_store_app/core/product_model.dart';
import 'product_card_widget.dart';

class BestsellersSectionWidget extends StatelessWidget {
  BestsellersSectionWidget({super.key});

  final List<ProductModel> products = [
    ProductModel(
      id: '1',
      name: 'Soy cake',
      description: 'Lorem ipsum dolor sit amet',
      price: 15,
      imageUrl: AppImages.productSoyCake,
      cardColor: AppColors.cardLavender,
    ),
    ProductModel(
      id: '2',
      name: 'Soy tundra',
      description: 'Zapach pizmu i mchu dębowego',
      price: 50,
      imageUrl: AppImages.productLoveStory,
      cardColor: AppColors.cardMint,
    ),
    ProductModel(
      id: '3',
      name: 'Love story',
      description: 'Nuta pomarańczy z wanilią i cytryną',
      price: 20,
      imageUrl: AppImages.productLoveStory,
      cardColor: AppColors.cardLavender,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Section Header
        Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.pagePadding,
            AppSpacing.xl,
            AppSpacing.pagePadding,
            AppSpacing.lg,
          ),
          child: Text('Bestsellers', style: AppTextStyles.sectionTitle),
        ),

        SizedBox(
          height: 270,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.pagePadding,
            ),
            itemCount: products.length,
            separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.md),
            itemBuilder: (context, index) =>
                ProductCardWidget(product: products[index]),
          ),
        ),

        const SizedBox(height: AppSpacing.lg),
        _SeeMoreButton(),

        const SizedBox(height: AppSpacing.xl),
      ],
    );
  }
}

class _SeeMoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.xl,
          vertical: AppSpacing.sm + 4,
        ),
        decoration: BoxDecoration(
          color: AppColors.primarySoft,
          borderRadius: BorderRadius.circular(AppRadius.circular),
        ),
        child: Text(
          'see more',
          style: GoogleFonts.lato(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
            letterSpacing: 0.3,
          ),
        ),
      ),
    );
  }
}
