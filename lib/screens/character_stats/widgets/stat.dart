import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class Stat extends StatelessWidget {
  const Stat({required this.name, required this.value, Key? key})
      : super(key: key);
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 66,
        decoration: BoxDecoration(
          color: currTheme.secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: const [cardShadow],
        ),
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                name,
                style: smallTitleTextStyle,
              ),
            ),
            SizedBox(
              height: 45,
              child: Center(
                child: Text(
                  value,
                  style: valueTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ));
  }
}
