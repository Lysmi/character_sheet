import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:flutter/material.dart';

import 'widgets/closed_character_item.dart';
import 'widgets/opened_character_tem.dart';

class CharacterItem extends StatefulWidget {
  const CharacterItem(this.character, {Key? key}) : super(key: key);
  final CharacterEntity character;

  @override
  State<CharacterItem> createState() => _CharacterItemState();
}

class _CharacterItemState extends State<CharacterItem> {
  bool opened = false;

  void togleState() {
    setState(() {
      opened = !opened;
    });
  }

  @override
  Widget build(BuildContext context) {
    return opened
        ? OpenedCharacterItem(
            togleState: togleState, character: widget.character)
        : ClosedCharacterItem(
            togleState: togleState, character: widget.character);
  }
}
