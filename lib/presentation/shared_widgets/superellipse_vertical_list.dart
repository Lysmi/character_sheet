import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/presentation/shared_widgets/superellipse_vertical_list_item.dart';
import 'package:flutter/cupertino.dart';

class SuperelipseVerticalList extends Column {
  static const double defaultBorderRadius = 10;
  // static const double defaultElementHeight = 26;
  static const double defaultIndent = 3;

  SuperelipseVerticalList({
    double borderRadius = defaultBorderRadius,
    double indent = defaultIndent,
    VoidCallback elementOnTap = avoid,
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
                .asMap()
                .entries
                .map((entry) => (elementOnTap != avoid
                    ? GestureDetector(
                        onTap: elementOnTap,
                        child: SuperelipseVerticalListItem(
                          borderRadius: borderRadius,
                          columnPosition: children.length >
                                  1 // TODO мож сделать по человечески?)
                              ? entry.key > 1
                                  ? entry.key == children.length - 1
                                      ? SuperelipseVerticalListItemPositionEnum
                                          .middle
                                      : SuperelipseVerticalListItemPositionEnum
                                          .last
                                  : SuperelipseVerticalListItemPositionEnum
                                      .first
                              : SuperelipseVerticalListItemPositionEnum.single,
                          child: entry.value,
                        ),
                      )
                    : SuperelipseVerticalListItem(
                        borderRadius: borderRadius,
                        columnPosition: children.length >
                                1 // TODO мож сделать по человечески?)
                            ? entry.key > 1
                                ? entry.key == children.length - 1
                                    ? SuperelipseVerticalListItemPositionEnum
                                        .middle
                                    : SuperelipseVerticalListItemPositionEnum
                                        .last
                                : SuperelipseVerticalListItemPositionEnum.first
                            : SuperelipseVerticalListItemPositionEnum.single,
                        child: entry.value,
                      )))
                .toList());
}

void avoid() {}
