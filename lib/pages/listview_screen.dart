import 'package:flutter/material.dart';
import '../consts/app_consts.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> items = const [
    {'title': 'العنصر الأول', 'subtitle': 'وصف العنصر الأول', 'icon': Icons.star, 'color': AppColors.primaryBlue},
    {'title': 'العنصر الثاني', 'subtitle': 'وصف العنصر الثاني', 'icon': Icons.favorite, 'color': AppColors.primaryGreen},
    {'title': 'العنصر الثالث', 'subtitle': 'وصف العنصر الثالث', 'icon': Icons.home, 'color': AppColors.primaryOrange},
    {'title': 'العنصر الرابع', 'subtitle': 'وصف العنصر الرابع', 'icon': Icons.settings, 'color': AppColors.primaryRed},
    {'title': 'العنصر الخامس', 'subtitle': 'وصف العنصر الخامس', 'icon': Icons.phone, 'color': AppColors.primaryPurple},
    {'title': 'العنصر السادس', 'subtitle': 'وصف العنصر السادس', 'icon': Icons.email, 'color': AppColors.primaryBlue},
    {'title': 'العنصر السابع', 'subtitle': 'وصف العنصر السابع', 'icon': Icons.person, 'color': AppColors.primaryGreen},
    {'title': 'العنصر الثامن', 'subtitle': 'وصف العنصر الثامن', 'icon': Icons.work, 'color': AppColors.primaryOrange},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صفحة ListView'),
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: AppColors.white,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Text(
              'قائمة قابلة للتمرير',
              style: TextStyle(fontSize: defaultTitleFontSize, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(defaultPadding),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return _buildListItem(item, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(Map<String, dynamic> item, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: defaultMargin),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(defaultPadding),
        leading: CircleAvatar(
          backgroundColor: item['color'],
          child: Icon(
            item['icon'],
            color: AppColors.white,
            size: defaultIconSize,
          ),
        ),
        title: Text(
          item['title'],
          style: const TextStyle(
            fontSize: defaultFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          item['subtitle'],
          style: const TextStyle(
            color: AppColors.grey,
          ),
        ),
        trailing: Text(
          '${index + 1}',
          style: TextStyle(
            color: item['color'],
            fontSize: defaultFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          // يمكن إضافة إجراء عند الضغط
        },
      ),
    );
  }
}