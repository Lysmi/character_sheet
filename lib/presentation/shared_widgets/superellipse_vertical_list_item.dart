import 'dart:html';

import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/presentation/shared_widgets/superellipse_vertical_list.dart';
import 'package:flutter/material.dart';

class SuperellipseVerticalListItem extends Container {
  const SuperellipseVerticalListItem(
      {this.columnPosition = SuperellipseVerticalListItemPositionEnum.single,
      this.borderRadius = SuperelipseVerticalList.defaultBorderRadius,
      // this.height = SuperelipseColumn.defaultElementHeight,
      this.child,
      super.alignment,
      super.clipBehavior,
      super.color,
      super.constraints,
      super.decoration,
      super.foregroundDecoration,
      super.height,
      super.margin,
      super.padding,
      super.transform,
      super.transformAlignment,
      super.width,
      Key? key})
      : super(key: key);

  /// Не стоит это использовать если ты не знаешь что делаешь
  final SuperellipseVerticalListItemPositionEnum columnPosition;
  final double borderRadius;
  // final double height;
  final Widget? child;

  BorderRadius getBorderRadiusByElementPosition(
      SuperellipseVerticalListItemPositionEnum position) {
    switch (position) {
      case SuperellipseVerticalListItemPositionEnum.first:
        return BorderRadius.vertical(
            top: Radius.circular(borderRadius), bottom: Radius.zero);

      case SuperellipseVerticalListItemPositionEnum.middle:
        return const BorderRadius.all(Radius.zero);

      case SuperellipseVerticalListItemPositionEnum.last:
        return BorderRadius.vertical(
            top: Radius.zero, bottom: Radius.circular(borderRadius));

      case SuperellipseVerticalListItemPositionEnum.single:
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
