import 'package:flutter/material.dart';
import '../consts/app_consts.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صفحة Stack'),
        backgroundColor: AppColors.primaryGreen,
        foregroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Text(
              'تخطيط Stack - عناصر فوق بعض',
              style: TextStyle(fontSize: defaultTitleFontSize, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: defaultMargin),
            
            Expanded(
              child: Column(
                children: [
                  Expanded(child: _buildFirstStack()),
                  const SizedBox(height: defaultMargin),
                  Expanded(child: _buildSecondStack()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstStack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: AppColors.primaryBlue,
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
        ),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: AppColors.primaryGreen,
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: AppColors.primaryOrange,
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
          child: const Center(
            child: Text(
              'مركز',
              style: TextStyle(
                color: AppColors.white,
                fontSize: defaultFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSecondStack() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [AppColors.primaryPurple, AppColors.primaryBlue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
        ),
        const Positioned(
          top: 16,
          right: 16,
          child: Icon(
            Icons.star,
            color: AppColors.white,
            size: 30,
          ),
        ),
        const Positioned(
          bottom: 16,
          left: 16,
          child: Text(
            'عنصر في الأسفل',
            style: TextStyle(
              color: AppColors.white,
              fontSize: defaultFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Positioned(
          top: 16,
          left: 16,
          child: CircleAvatar(
            backgroundColor: AppColors.white,
            child: Icon(
              Icons.person,
              color: AppColors.primaryPurple,
            ),
          ),
        ),
        const Center(
          child: Text(
            'نص في المنتصف',
            style: TextStyle(
              color: AppColors.white,
              fontSize: defaultTitleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}