import 'package:flutter/material.dart';
import '../consts/app_consts.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صفحة Row'),
        backgroundColor: AppColors.primaryOrange,
        foregroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Text(
              'تخطيط Row - العناصر الأفقية',
              style: TextStyle(fontSize: defaultTitleFontSize, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: defaultMargin),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBox('1', AppColors.primaryBlue),
                _buildBox('2', AppColors.primaryGreen),
                _buildBox('3', AppColors.primaryRed),
              ],
            ),
            
            const SizedBox(height: defaultMargin),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildBox('أ', AppColors.primaryPurple),
                _buildBox('ب', AppColors.primaryOrange),
              ],
            ),
            
            const SizedBox(height: defaultMargin),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildBox('مركز', AppColors.primaryBlue),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(String text, Color color) {
    return Container(
      width: 80,
      height: 80,
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
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: defaultFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}