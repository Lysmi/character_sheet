import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/colours.dart';

class TextTag extends StatelessWidget {
  final String data;

  const TextTag({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
          color: currTheme.secondaryColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Text(
        data,
        style: smallTitleOnMainTextStyle,
      ),
    );
  }
}
