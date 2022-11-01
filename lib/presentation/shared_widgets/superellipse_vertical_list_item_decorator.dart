import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/presentation/shared_widgets/superellipse_vertical_list.dart';
import 'package:flutter/material.dart';

class SuperellipseVerticalListItemDecoration extends BoxDecoration {
  SuperellipseVerticalListItemDecoration(
      {Color? color,
      DecorationImage? image,
      BoxBorder? border,
      this.borderRadiusValue = SuperelipseVerticalList.defaultBorderRadiusValue,
      SuperelipseVerticalListItemPositionEnum position =
          SuperelipseVerticalListItemPositionEnum.single,
      List<BoxShadow>? boxShadow,
      Gradient? gradient,
      BlendMode? backgroundBlendMode,
      BoxShape shape = BoxShape.rectangle})
      : super(
            color: color,
            image: image,
            border: border,
            borderRadius: SuperellipseVerticalListItemDecoration
                .getBorderRadiusByItemPosition(position, borderRadiusValue),
            boxShadow: boxShadow,
            gradient: gradient,
            shape: shape,
            backgroundBlendMode: backgroundBlendMode);

  final double? borderRadiusValue;

  static BorderRadius getBorderRadiusByItemPosition(
      SuperelipseVerticalListItemPositionEnum position,
      double borderRadiusValue) {
    switch (position) {
      case SuperelipseVerticalListItemPositionEnum.first:
        return BorderRadius.vertical(
            top: Radius.circular(borderRadiusValue), bottom: Radius.zero);

      case SuperelipseVerticalListItemPositionEnum.middle:
        return const BorderRadius.all(Radius.zero);

      case SuperelipseVerticalListItemPositionEnum.last:
        return BorderRadius.vertical(
            top: Radius.zero, bottom: Radius.circular(borderRadiusValue));

      case SuperelipseVerticalListItemPositionEnum.single:
        return BorderRadius.all(Radius.circular(borderRadiusValue));
    }
  }
}
