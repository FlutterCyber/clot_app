import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../core/constants/color.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {

  String selectedLanguageCode = 'uz-UZ';


  final List<Map<String, dynamic>> languages = [
    {"code": "en-US", "name": "English", "icon": Icons.language},
    {"code": "ru-RU", "name": "Русский", "icon": Icons.g_translate},
    {"code": "uz-UZ", "name": "Oʻzbekcha", "icon": Icons.flag},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        appBar: AppBar(
          backgroundColor: CustomColor.mainColor,
          leading: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: CustomColor.greyColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              IconsaxPlusBroken.arrow_left_2,
              color: Colors.white,
            ),
          ),
          title: const Text(
            "Languages",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            final language = languages[index];
            return ListTile(
              leading: Icon(
                language['icon'],
                color: Colors.white,
              ),
              title: Text(
                language['name'],
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Checkbox(
                shape: CircleBorder(),
                activeColor: Colors.green,
                checkColor: Colors.white,
                value: selectedLanguageCode == language['code'],
                onChanged: (bool? value) {
                  if (value == true) {
                    setState(() {
                      selectedLanguageCode = language['code'];
                      _changeLanguage(language['code'], context);
                    });
                  }
                },
              ),
              onTap: () {
                setState(() {
                  selectedLanguageCode = language['code'];
                  _changeLanguage(language['code'], context);
                });
              },
            );
          },
        ),
      ),
    );
  }


  void _changeLanguage(String code, BuildContext context) {
    switch (code) {
      case 'en-US':
        context.setLocale(const Locale('en', 'US'));
        break;
      case 'ru-RU':
        context.setLocale(const Locale('ru', 'RU'));
        break;
      case 'uz-UZ':
        context.setLocale(const Locale('uz', 'UZ'));
        break;
    }
  }
}
