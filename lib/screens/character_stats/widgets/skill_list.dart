import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class SkillListView extends StatelessWidget {
  const SkillListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 233,
      decoration: BoxDecoration(
        color: currTheme.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [cardShadow],
      ),
      constraints: const BoxConstraints(maxWidth: 500),
    );
  }
}