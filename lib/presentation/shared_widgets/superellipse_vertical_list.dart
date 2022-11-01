import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/presentation/shared_widgets/superellipse_vertical_list_item.dart';
import 'package:flutter/cupertino.dart';

class SuperelipseVerticalList extends Column {
  static const Radius defaultBorderOutRadius = Radius.circular(10);
  static const Radius defaultBorderInRadius = Radius.circular(4);
  // static const double defaultElementHeight = 26;
  static const double defaultIndent = 3;

  SuperelipseVerticalList({
    Radius borderOutRadius = defaultBorderOutRadius,
    Radius borderInRadius = defaultBorderInRadius,
    double indent = defaultIndent,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    List<Widget> children = const [],
    super.key,
  }) : super(
            children: children
                .map((entry) => (SuperellipseVerticalListItem(
                      borderOutRadius: borderOutRadius,
                      borderInRadius: borderInRadius,
                      columnPosition: children.length >
                              1 // TODO мож сделать по человечески?)
                          ? entry != children.first
                              ? entry == children.last
                                  ? SuperellipseVerticalListItemPositionEnum
                                      .middle
                                  : SuperellipseVerticalListItemPositionEnum
                                      .last
                              : SuperellipseVerticalListItemPositionEnum.first
                          : SuperellipseVerticalListItemPositionEnum.single,
                      child: entry,
                    )))
                .toList());
}
