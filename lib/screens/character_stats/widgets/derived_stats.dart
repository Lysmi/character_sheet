import 'package:character_sheet/screens/character_stats/widgets/stat.dart';
import 'package:flutter/material.dart';

class DerivedStats extends StatelessWidget {
  const DerivedStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Flexible(
          child: Stat(
            name: "AC",
            value: "16",
          ),
        ),
        SizedBox(
          width: 11,
        ),
        Flexible(
          child: Stat(
            name: "Initiative",
            value: "+5",
          ),
        ),
        SizedBox(
          width: 11,
        ),
        Flexible(
          child: Stat(
            name: "Speed",
            value: "30",
          ),
        ),
      ],
    );
  }
}
