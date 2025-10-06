import 'package:flutter/material.dart';
import '../consts/app_consts.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'row_screen.dart';
import 'column_screen.dart';
import 'container_screen.dart';
import 'listview_screen.dart';
import 'stack_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String displayText = "مرحباً بك في تطبيق Flutter المخصص";
  final TextEditingController _textController = TextEditingController();

  void _updateText() {
    setState(() {
      displayText = _textController.text.isEmpty
          ? "مرحباً بك في تطبيق Flutter المخصص"
          : _textController.text;
    });
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // ⚡ السماح للـ Scaffold بالتكيف مع الكيبورد
      appBar: AppBar(
        title: const Text('الصفحة الرئيسية'),
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: AppColors.white,
        centerTitle: true,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // بطاقة النص
                      Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        margin: const EdgeInsets.only(bottom: defaultMargin),
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius:
                              BorderRadius.circular(defaultBorderRadius),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.grey.withOpacity(0.3),
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          displayText,
                          style: const TextStyle(
                            fontSize: defaultTitleFontSize,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // حقل النص
                      CustomTextField(
                        hintText: "أدخل نصاً جديداً",
                        controller: _textController,
                      ),

                      const SizedBox(height: defaultMargin / 2),

                      // زر تحديث النص
                      CustomButton(
                        text: "تحديث النص",
                        onPressed: _updateText,
                        backgroundColor: AppColors.primaryGreen,
                      ),

                      const SizedBox(height: defaultMargin),

                      CustomButton(
                        text: "صفحة Row",
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RowScreen())),
                        backgroundColor: AppColors.primaryOrange,
                      ),
                      CustomButton(
                        text: "صفحة Column",
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ColumnScreen())),
                        backgroundColor: AppColors.primaryPurple,
                      ),
                      CustomButton(
                        text: "صفحة Container",
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ContainerScreen())),
                        backgroundColor: AppColors.primaryRed,
                      ),
                      CustomButton(
                        text: "صفحة ListView",
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ListViewScreen())),
                        backgroundColor: AppColors.primaryBlue,
                      ),
                      CustomButton(
                        text: "صفحة Stack",
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StackScreen())),
                        backgroundColor: AppColors.primaryGreen,
                      ),

                      const Spacer(), // لضمان ملء المساحة المتبقية
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
