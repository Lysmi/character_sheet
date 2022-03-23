import 'package:character_sheet/widgets/ability_list.dart';
import 'package:flutter/material.dart';

class CharacterStatsContent extends StatelessWidget {


  const CharacterStatsContent({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AbilityList()
      ),
    );
  }
}
