import 'package:character_sheet/screens/character_stats/widgets/stat.dart';
import 'package:flutter/material.dart';

class DerivedStats extends StatelessWidget {
  const DerivedStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 11.0,
      children: const [
        Stat(
          name: "AC",
          value: "16",
        ),
        Stat(
          name: "Initiative",
          value: "+5",
        ),
        Stat(
          name: "Speed",
          value: "30",
        ),
      ],
    );
  }
}
