import 'dart:html';

import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/presentation/shared_widgets/superellipse_vertical_list.dart';
import 'package:flutter/material.dart';

class SuperellipseVerticalListItem extends Container {
  SuperellipseVerticalListItem(
      {this.columnPosition = SuperellipseVerticalListItemPositionEnum.single,
      required this.borderOutRadius,
      required this.borderInRadius,
      // this.height = SuperelipseColumn.defaultElementHeight,
      BoxDecoration? decoration,
      super.alignment,
      super.clipBehavior,
      super.color,
      super.constraints,
      super.foregroundDecoration,
      super.height,
      super.margin,
      super.padding,
      super.transform,
      super.transformAlignment,
      super.width,
      super.child,
      Key? key})
      : super(
            key: key,
            decoration: decoration?.copyWith(
                borderRadius: getBorderRadiusByItemPosition(
                    columnPosition, borderOutRadius, borderInRadius)));

  /// Не стоит это использовать если ты не знаешь что делаешь
  final SuperellipseVerticalListItemPositionEnum columnPosition;
  final Radius borderOutRadius;
  final Radius borderInRadius;
  // final double height;

  static BorderRadius getBorderRadiusByItemPosition(
      SuperellipseVerticalListItemPositionEnum position,
      Radius borderRadiusOut,
      Radius borderInRadius) {
    switch (position) {
      case SuperellipseVerticalListItemPositionEnum.first:
        return BorderRadius.vertical(top: borderRadiusOut, bottom: Radius.zero);

      case SuperellipseVerticalListItemPositionEnum.middle:
        return BorderRadius.all(borderInRadius);

      case SuperellipseVerticalListItemPositionEnum.last:
        return BorderRadius.vertical(top: Radius.zero, bottom: borderRadiusOut);

      case SuperellipseVerticalListItemPositionEnum.single:
        return BorderRadius.all(borderRadiusOut);
    }
  }
}
