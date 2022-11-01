import 'dart:html';

import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/presentation/shared_widgets/superellipse_vertical_list.dart';
import 'package:flutter/material.dart';

class SuperelipseVerticalListItem extends StatelessWidget {
  const SuperelipseVerticalListItem(
      {this.columnPosition = SuperelipseVerticalListItemPositionEnum.single,
      this.borderRadius = SuperelipseVerticalList.defaultBorderRadius,
      // this.height = SuperelipseColumn.defaultElementHeight,
      this.child,
      Key? key})
      : super(key: key);

  /// Не стоит это использовать если ты не знаешь что делаешь
  final SuperelipseVerticalListItemPositionEnum columnPosition;
  final double borderRadius;
  // final double height;
  final Widget? child;

  BorderRadius getBorderRadiusByElementPosition(
      SuperelipseVerticalListItemPositionEnum position) {
    switch (position) {
      case SuperelipseVerticalListItemPositionEnum.first:
        return BorderRadius.vertical(
            top: Radius.circular(borderRadius), bottom: Radius.zero);

      case SuperelipseVerticalListItemPositionEnum.middle:
        return const BorderRadius.all(Radius.zero);

      case SuperelipseVerticalListItemPositionEnum.last:
        return BorderRadius.vertical(
            top: Radius.zero, bottom: Radius.circular(borderRadius));

      case SuperelipseVerticalListItemPositionEnum.single:
        return BorderRadius.all(Radius.circular(borderRadius));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: getBorderRadiusByElementPosition(columnPosition),
      ),
      child: child,
    );
  }
}
