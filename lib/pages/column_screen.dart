import 'package:flutter/material.dart';
import '../consts/app_consts.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صفحة Column'),
        backgroundColor: AppColors.primaryPurple,
        foregroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'تخطيط Column - العناصر العمودية',
              style: TextStyle(fontSize: defaultTitleFontSize, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            
            _buildCard('العنصر الأول', AppColors.primaryBlue, Icons.star),
            _buildCard('العنصر الثاني', AppColors.primaryGreen, Icons.favorite),
            _buildCard('العنصر الثالث', AppColors.primaryOrange, Icons.home),
            _buildCard('العنصر الرابع', AppColors.primaryRed, Icons.settings),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, Color color, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: defaultFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            icon,
            color: AppColors.white,
            size: defaultIconSize,
          ),
        ],
      ),
    );
  }
}