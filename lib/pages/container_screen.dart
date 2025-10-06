import 'package:flutter/material.dart';
import '../consts/app_consts.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صفحة Container'),
        backgroundColor: AppColors.primaryRed,
        foregroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Text(
              'استخدامات مختلفة للـ Container',
              style: TextStyle(fontSize: defaultTitleFontSize, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: defaultMargin),
            
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: defaultMargin,
                mainAxisSpacing: defaultMargin,
                children: [
                  _buildGradientContainer(),
                  _buildBorderContainer(),
                  _buildShadowContainer(),
                  _buildImageContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradientContainer() {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primaryBlue, AppColors.primaryPurple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: const Center(
        child: Text(
          'تدرج لوني',
          style: TextStyle(
            color: AppColors.white,
            fontSize: defaultFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildBorderContainer() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.primaryGreen, width: 3),
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: const Center(
        child: Text(
          'حدود ملونة',
          style: TextStyle(
            color: AppColors.primaryGreen,
            fontSize: defaultFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildShadowContainer() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryOrange,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryOrange.withOpacity(0.5),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const Center(
        child: Text(
          'ظل جميل',
          style: TextStyle(
            color: AppColors.white,
            fontSize: defaultFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.image,
              size: 40,
              color: AppColors.grey,
            ),
            SizedBox(height: 8),
            Text(
              'صورة',
              style: TextStyle(
                color: AppColors.grey,
                fontSize: defaultFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}